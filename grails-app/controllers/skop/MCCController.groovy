package skop
/**
 * @author levry
 */
class MCCController {

    static scaffold = MCC

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [mccs: listAllResources(params), mccCount: countResources()]
    }

}
