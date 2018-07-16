.class public interface abstract Lcom/zp/mm/api/ServerConnector;
.super Ljava/lang/Object;
.source "ServerConnector.java"


# virtual methods
.method public abstract appStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/zp/mm/api/Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zp/mm/api/MMApiException;
        }
    .end annotation
.end method

.method public varargs abstract createCodePay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lorg/apache/http/NameValuePair;)Lcom/zp/mm/api/CodePayCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zp/mm/api/MMApiException;
        }
    .end annotation
.end method

.method public abstract destroy()V
.end method

.method public abstract getSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zp/mm/api/SMSCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zp/mm/api/MMApiException;
        }
    .end annotation
.end method

.method public abstract initialize()V
.end method
