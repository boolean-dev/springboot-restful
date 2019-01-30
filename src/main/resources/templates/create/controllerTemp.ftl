package ${BASE_PACKAGE}.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import ${BASE_PACKAGE}.massage.*;
import ${BASE_PACKAGE}.Page;
import ${BASE_PACKAGE}.Pageable;
import ${BASE_PACKAGE}.entity.${objectName};
import ${BASE_PACKAGE}.service.${objectName}Service;

/**
 * ${objectName}Controller-${memo}
 * @version: v1.0
 * @Description: ${memo}
 * @author: ${AUTHOR}
 * @date: ${DATE}
 */
@ResponseBody
@Controller("admin${objectNameLower}Controller")
@RequestMapping("/${objectNameLower}")
public class ${objectName}Controller extends BaseController {

	@Resource(name = "${objectNameLower}ServiceImpl")
	private ${objectName}Service ${objectNameLower}Service;
	
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public Message save(${objectName} ${objectNameLower}) throws Exception {
		${objectNameLower}.buildId();
		${objectNameLower}Service.save(${objectNameLower});
		return new SuccessMsg("保存成功");
	}
	
	@RequestMapping(value = "/", method = RequestMethod.PUT)
	public Message update(${objectName} ${objectNameLower}) throws Exception {
		${objectNameLower}Service.update(${objectNameLower});
		return new SuccessMsg("更新成功");
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public Page<Location> list(Pageable pageable) throws Exception {
		return ${objectNameLower}Service.findPage(pageable);
	}
	
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public Message view(@PathVariable String id) throws Exception {
		${objectName} ${objectNameLower} = ${objectNameLower}Service.findById(id);
		return new SuccessMsg("成功",${objectNameLower});
	}

	@RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
	public Message delete(@PathVariable String id) throws Exception {
		String[] ids = {id};
		int i = ${objectNameLower}Service.delete(ids);
		if(i > 0){
			return new SuccessMsg("成功");
		}else{
			return new ErrorMsg("失败");
		}
	}



	@RequestMapping(value = "", method = RequestMethod.DELETE)
	public Message delete(String[] ids) throws Exception {
		int i = ${objectNameLower}Service.delete(ids);
		if(i > 0){
			return new SuccessMsg("成功");
		}else{
			return new ErrorMsg("失败");
		}
	}
		
}