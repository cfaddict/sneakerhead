package com.vega.sneakerhead



import org.junit.*
import grails.test.mixin.*

@TestFor(ShoeController)
@Mock(Shoe)
class ShoeControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/shoe/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.shoeInstanceList.size() == 0
        assert model.shoeInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.shoeInstance != null
    }

    void testSave() {
        controller.save()

        assert model.shoeInstance != null
        assert view == '/shoe/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/shoe/show/1'
        assert controller.flash.message != null
        assert Shoe.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/shoe/list'

        populateValidParams(params)
        def shoe = new Shoe(params)

        assert shoe.save() != null

        params.id = shoe.id

        def model = controller.show()

        assert model.shoeInstance == shoe
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/shoe/list'

        populateValidParams(params)
        def shoe = new Shoe(params)

        assert shoe.save() != null

        params.id = shoe.id

        def model = controller.edit()

        assert model.shoeInstance == shoe
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/shoe/list'

        response.reset()

        populateValidParams(params)
        def shoe = new Shoe(params)

        assert shoe.save() != null

        // test invalid parameters in update
        params.id = shoe.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/shoe/edit"
        assert model.shoeInstance != null

        shoe.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/shoe/show/$shoe.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        shoe.clearErrors()

        populateValidParams(params)
        params.id = shoe.id
        params.version = -1
        controller.update()

        assert view == "/shoe/edit"
        assert model.shoeInstance != null
        assert model.shoeInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/shoe/list'

        response.reset()

        populateValidParams(params)
        def shoe = new Shoe(params)

        assert shoe.save() != null
        assert Shoe.count() == 1

        params.id = shoe.id

        controller.delete()

        assert Shoe.count() == 0
        assert Shoe.get(shoe.id) == null
        assert response.redirectedUrl == '/shoe/list'
    }
}
