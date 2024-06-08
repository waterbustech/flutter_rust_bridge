use crate::codegen::generator::api_dart::spec_generator::class::method::{
    generate_api_methods, GenerateApiMethodConfig, GenerateApiMethodMode,
};
use crate::codegen::generator::api_dart::spec_generator::class::ty::ApiDartGeneratorClassTrait;
use crate::codegen::generator::api_dart::spec_generator::class::{
    proxy_variant, ApiDartGeneratedClass,
};
use crate::codegen::ir::mir::ty::delegate::{
    MirTypeDelegate, MirTypeDelegateArray, MirTypeDelegateArrayMode, MirTypeDelegatePrimitiveEnum,
    MirTypeDelegateProxyVariant,
};
use crate::library::codegen::generator::api_dart::spec_generator::base::*;
use crate::library::codegen::generator::api_dart::spec_generator::info::ApiDartGeneratorInfoTrait;
use crate::utils::basic_code::dart_header_code::DartHeaderCode;
use crate::utils::namespace::NamespacedName;

impl<'a> ApiDartGeneratorClassTrait for DelegateApiDartGenerator<'a> {
    fn generate_class(&self) -> Option<ApiDartGeneratedClass> {
        match &self.mir {
            MirTypeDelegate::PrimitiveEnum(MirTypeDelegatePrimitiveEnum { mir, .. }) => {
                EnumRefApiDartGenerator::new(mir.clone(), self.context).generate_class()
            }
            MirTypeDelegate::Array(array) => generate_array(array, self.context),
            _ => None,
        }
    }

    fn generate_extra_impl_code(&self) -> Option<String> {
        match &self.mir {
            MirTypeDelegate::ProxyVariant(mir) => Some(generate_proxy_variant(mir, self.context)),
            _ => None,
        }
    }
}

fn generate_array(
    array: &MirTypeDelegateArray,
    context: ApiDartGeneratorContext,
) -> Option<ApiDartGeneratedClass> {
    let self_dart_api_type = array.dart_api_type(context);
    let inner_dart_api_type = ApiDartGenerator::new(array.inner(), context).dart_api_type();
    let delegate_dart_api_type =
        ApiDartGenerator::new(array.get_delegate(), context).dart_api_type();

    let array_length = array.length;

    let dart_init_method = match array.mode {
            MirTypeDelegateArrayMode::General(..) => format!(
                "{self_dart_api_type}.init({inner_dart_api_type} fill): this(List<{inner_dart_api_type}>.filled(arraySize,fill));",
            ),
            MirTypeDelegateArrayMode::Primitive(..) => format!(
                "{self_dart_api_type}.init(): this({delegate_dart_api_type}(arraySize));",
            ),
        };

    Some(ApiDartGeneratedClass {
        header: DartHeaderCode {
            import: "import 'package:collection/collection.dart';\n".to_owned(),
            ..Default::default()
        },
        namespace: array.namespace.clone(),
        class_name: self_dart_api_type.clone(),
        code: format!(
            "
            class {self_dart_api_type} extends NonGrowableListView<{inner_dart_api_type}> {{
                static const arraySize = {array_length};

                @internal
                {delegate_dart_api_type} get inner => _inner;
                final {delegate_dart_api_type} _inner;

                {self_dart_api_type}(this._inner)
                    : assert(_inner.length == arraySize),
                      super(_inner);
  
                {dart_init_method}
              }}
            "
        ),
        needs_freezed: false,
    })
}

fn generate_proxy_variant(
    mir: &MirTypeDelegateProxyVariant,
    context: ApiDartGeneratorContext,
) -> String {
    todo!();

    // let class_name = proxy_variant::compute_dart_extra_type(mir, context);
    //
    // let methods = generate_api_methods(
    //     &todo!(),
    //     context,
    //     &GenerateApiMethodConfig {
    //         mode_static: GenerateApiMethodMode::Nothing,
    //         // TODO we provide impl
    //         mode_non_static: GenerateApiMethodMode::DeclOnly,
    //     },
    //     &class_name,
    // );
    //
    // format!(
    //     "class {class_name} {{
    //     }}"
    // )
}
