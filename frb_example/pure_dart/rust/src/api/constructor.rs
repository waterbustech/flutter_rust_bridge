// FRB_INTERNAL_GENERATOR: {"forbiddenDuplicatorModes": ["sync", "rustAsync", "sync sse", "rustAsync sse"]}

use flutter_rust_bridge::frb;

pub struct ConstructorTranslatableStructTwinNormal {
    pub one: String,
}

impl ConstructorTranslatableStructTwinNormal {
    pub fn new() -> Self {
        Self {
            one: "hello".to_owned(),
        }
    }
}

#[frb(opaque)]
pub struct ConstructorOpaqueStructTwinNormal {
    pub one: String,
}

impl ConstructorOpaqueStructTwinNormal {
    pub fn new() -> Self {
        Self {
            one: "hello".to_owned(),
        }
    }

    #[frb(sync)]
    pub fn check(&self) {
        assert_eq!(self.one, "hello");
    }
}

pub struct ConstructorTranslatableSyncStructTwinNormal {
    pub one: String,
}

impl ConstructorTranslatableSyncStructTwinNormal {
    #[frb(sync)]
    pub fn new() -> Self {
        Self {
            one: "hello".to_owned(),
        }
    }
}

#[frb(opaque)]
pub struct ConstructorOpaqueSyncStructTwinNormal {
    pub one: String,
}

impl ConstructorOpaqueSyncStructTwinNormal {
    #[frb(sync)]
    pub fn new() -> Self {
        Self {
            one: "hello".to_owned(),
        }
    }

    #[frb(sync)]
    pub fn check(&self) {
        assert_eq!(self.one, "hello");
    }
}
