package skop
/**
 * @author levry
 */
class MCCController {

    static scaffold = MCC

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [items: listAllResources(params), itemsCount: countResources()]
    }

}
