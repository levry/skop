package skop

import static skop.data.DataInitializer.initCategories

class BootStrap {

    def init = { servletContext ->
        initCategories(['Продукты', 'Кафе/рестораны', 'Транспорт', 'Развлечения'])
    }
    def destroy = {
    }
}
