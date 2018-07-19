package practice.spring.revisedSpring;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class assignmentAJAX {

    @RequestMapping(value="/approvedfunction",method=RequestMethod.POST)
    @ResponseBody
    public void approved(@RequestParam String id){
        System.out.println(id  " is approved.");
        return ;
    }


    @RequestMapping(value="/rejectedfunction",method=RequestMethod.POST)
    @ResponseBody
    public void rejected(@RequestParam String id){
        System.out.println(id  " is rejected.");
        return ;
    }


    @RequestMapping(value="/incompletefunction",method=RequestMethod.POST)
    @ResponseBody
    public void Approved(@RequestParam String id){
        System.out.println(id  " is incomplete.");
        return ;
    }
    @RequestMapping("/ajaxAssignment")
    public String ajax(){
        return "JqueryAjaxAssignment";
    }
}