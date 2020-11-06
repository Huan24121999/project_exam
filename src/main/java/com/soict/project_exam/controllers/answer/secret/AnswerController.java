package com.soict.project_exam.controllers.answer.secret;

import com.soict.project_exam.entities.answer.Answer;
import com.soict.project_exam.payload.response.JsonResult;
import com.soict.project_exam.service.answer.AnswerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import springfox.documentation.spring.web.json.Json;

@RestController
@RequestMapping("api/v1/private/answer")
public class AnswerController {

    @Autowired
    private AnswerService answerService;

    @PostMapping("/upload")
    public ResponseEntity<JsonResult> upload(@RequestBody Answer answer, @RequestParam("question-id") Integer questionId){

        return null;
    }

    @PutMapping("/update")
    public ResponseEntity<JsonResult> update(@RequestBody Answer answer){
        return answerService.save(answer)
                .map(answerResult -> {
                    return JsonResult.success(answerResult);
                })
                .orElse(JsonResult.saveError("Answer"));
    }

    @PutMapping("/delete")
    public ResponseEntity<JsonResult> delete(@RequestParam("id")Integer  id){
        if(answerService.deleted(id)){
            return JsonResult.deleted();
        }else{
            return JsonResult.saveError("Answer");
        }
    }

}
