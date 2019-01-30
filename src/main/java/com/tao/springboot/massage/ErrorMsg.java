package com.tao.springboot.massage;

/**
 * @ClassName ErrorMsg
 * @Descriiption TODO
 * @Author yanjiantao
 * @Date 2019/1/30 14:51
 **/
public class ErrorMsg extends Message {

    public ErrorMsg(String message) {
        super.code = 400;
        super.message = message;
    }

    public ErrorMsg(int code,String message) {
        super.code = code;
        super.message = message;
    }
}
