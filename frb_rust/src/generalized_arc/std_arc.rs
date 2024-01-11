use crate::generalized_arc::base_arc::BaseArc;
use std::sync::Arc;

#[derive(Debug)]
pub struct StdArc<T: ?Sized>(Arc<T>);

impl<T: ?Sized> AsRef<T> for StdArc<T> {
    fn as_ref(&self) -> &T {
        self.0.as_ref()
    }
}

impl<T: ?Sized> BaseArc<T> for StdArc<T> {
    fn new(value: T) -> Self
    where
        T: Sized,
    {
        Self(Arc::new(value))
    }

    fn try_unwrap(self) -> Result<T, Self>
    where
        T: Sized,
    {
        Arc::try_unwrap(self.0).map_err(Self)
    }

    fn into_inner(self) -> Option<T>
    where
        T: Sized,
    {
        Arc::into_inner(self.0)
    }

    fn into_raw(self) -> usize {
        Arc::into_raw(self.0) as *const () as _
    }
}

impl<T: ?Sized> From<Arc<T>> for StdArc<T> {
    fn from(ptr: Arc<T>) -> Self {
        Self(ptr)
    }
}

impl<T: ?Sized> Clone for StdArc<T> {
    fn clone(&self) -> Self {
        Self(self.0.clone())
    }
}

impl<T: ?Sized + 'static> Stdarc<T> {
    unsafe fn from_raw(raw: usize) -> Self
    where
        T: Sized,
    {
        Self(Arc::from_raw(raw as *const T))
    }
}
