from rest_framework.routers import SimpleRouter

from .views import ProjectView, CategorieView

app_name = 'projects'

router = SimpleRouter()
router.register('projects', ProjectView)
router.register('projects-categories', CategorieView)
