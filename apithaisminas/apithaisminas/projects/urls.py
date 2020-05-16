from rest_framework.routers import SimpleRouter

from .views import ProjectView, CategorieView, FileView
from .models import File

app_name = 'projects'

router = SimpleRouter()
router.register('projects', ProjectView)
router.register('projects-categories', CategorieView)
router.register('files', FileView, basename=File)
