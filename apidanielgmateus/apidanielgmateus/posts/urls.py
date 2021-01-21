from rest_framework.routers import SimpleRouter

from .views import PostView, CategorieView

app_name = 'posts'

router = SimpleRouter()
router.register('posts', PostView)
router.register('posts-categories', CategorieView)
