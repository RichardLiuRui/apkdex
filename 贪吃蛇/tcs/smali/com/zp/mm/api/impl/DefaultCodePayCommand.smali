.class public Lcom/zp/mm/api/impl/DefaultCodePayCommand;
.super Lcom/zp/mm/api/impl/MultiCommand;
.source "DefaultCodePayCommand.java"

# interfaces
.implements Lcom/zp/mm/api/CodePayCommand;


# instance fields
.field private final appKey:Ljava/lang/String;

.field private final channelId:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final exData:Ljava/lang/String;

.field private final handler:Lcom/zp/mm/api/CodePayHandler;

.field private final imei:Ljava/lang/String;

.field private final imsi:Ljava/lang/String;

.field private final parameters:[Lorg/apache/http/NameValuePair;

.field private final payCode:J

.field private final session:Ljava/lang/String;

.field private final systemInfo:Lorg/json/JSONObject;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lcom/zp/mm/api/CodePayHandler;[Lorg/apache/http/NameValuePair;[Lcom/zp/mm/api/Command;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imei"    # Ljava/lang/String;
    .param p3, "imsi"    # Ljava/lang/String;
    .param p4, "appKey"    # Ljava/lang/String;
    .param p5, "payCode"    # J
    .param p7, "channelId"    # Ljava/lang/String;
    .param p8, "exData"    # Ljava/lang/String;
    .param p9, "systemInfo"    # Lorg/json/JSONObject;
    .param p10, "session"    # Ljava/lang/String;
    .param p11, "handler"    # Lcom/zp/mm/api/CodePayHandler;
    .param p12, "parameters"    # [Lorg/apache/http/NameValuePair;
    .param p13, "commands"    # [Lcom/zp/mm/api/Command;

    .prologue
    .line 37
    invoke-direct {p0, p13}, Lcom/zp/mm/api/impl/MultiCommand;-><init>([Lcom/zp/mm/api/Command;)V

    .line 38
    iput-object p1, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->context:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->imei:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->imsi:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->appKey:Ljava/lang/String;

    .line 42
    iput-wide p5, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->payCode:J

    .line 43
    iput-object p7, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->channelId:Ljava/lang/String;

    .line 44
    iput-object p8, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->exData:Ljava/lang/String;

    .line 45
    iput-object p9, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->systemInfo:Lorg/json/JSONObject;

    .line 46
    iput-object p10, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->session:Ljava/lang/String;

    .line 47
    iput-object p11, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->handler:Lcom/zp/mm/api/CodePayHandler;

    .line 48
    iput-object p12, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->parameters:[Lorg/apache/http/NameValuePair;

    .line 49
    return-void
.end method


# virtual methods
.method public requestPay(Ljava/lang/String;)Z
    .locals 13
    .param p1, "verify_code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zp/mm/api/MMApiException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->handler:Lcom/zp/mm/api/CodePayHandler;

    iget-object v1, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->imei:Ljava/lang/String;

    iget-object v3, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->imsi:Ljava/lang/String;

    iget-object v4, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->appKey:Ljava/lang/String;

    iget-wide v5, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->payCode:J

    iget-object v7, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->channelId:Ljava/lang/String;

    iget-object v8, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->exData:Ljava/lang/String;

    iget-object v9, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->systemInfo:Lorg/json/JSONObject;

    iget-object v11, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->session:Ljava/lang/String;

    iget-object v12, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->parameters:[Lorg/apache/http/NameValuePair;

    move-object v10, p1

    invoke-interface/range {v0 .. v12}, Lcom/zp/mm/api/CodePayHandler;->requestCodePay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultCodePayCommand [session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->session:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
