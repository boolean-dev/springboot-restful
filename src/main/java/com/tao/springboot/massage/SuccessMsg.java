package com.tao.springboot.massage;

import lombok.Data;

/**
 * @ClassName SuccessMsg
 * @Descriiption TODO
 * @Author yanjiantao
 * @Date 2019/1/30 14:48
 **/
@Data
public class SuccessMsg extends Message {
    private Object data;

    public SuccessMsg(String message,Object data) {
        super.code = 200;
        super.message = message;
        this.data = data;
    }

    public SuccessMsg(String message) {
        super.code = 200;
        super.message = message;
        this.data = null;
    }
}
