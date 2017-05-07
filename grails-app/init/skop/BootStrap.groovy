package skop

import skop.data.CategoryInitializer

class BootStrap {

    def init = { servletContext ->
        new CategoryInitializer().init()
    }
    def destroy = {
    }
}
