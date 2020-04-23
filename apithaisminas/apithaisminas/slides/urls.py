from rest_framework.routers import SimpleRouter

from .views import SlideView

app_name = 'slides'

router = SimpleRouter()
router.register('slides', SlideView)
