// ignore_for_file: invalid_use_of_internal_member

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

void funcReturnUnitTwinSync({dynamic hint}) =>
    RustLib.instance.api.funcReturnUnitTwinSync(hint: hint);

String funcStringTwinSync({required String arg, dynamic hint}) =>
    RustLib.instance.api.funcStringTwinSync(arg: arg, hint: hint);
