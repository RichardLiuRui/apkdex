.class public Lcom/zxhykj/xinzf/beans/UpBean;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static reqParam:Lcom/zxhykj/xinzf/beans/UpBean; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private appCode:Ljava/lang/String;

.field private jsonParam:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private md5:Ljava/lang/String;

.field private packCode:Ljava/lang/String;

.field private sdkVersion:I

.field private sysVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Lcom/zxhykj/xinzf/beans/UpBean;
    .locals 2

    sget-object v0, Lcom/zxhykj/xinzf/beans/UpBean;->reqParam:Lcom/zxhykj/xinzf/beans/UpBean;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zxhykj/xinzf/beans/UpBean;

    invoke-direct {v0}, Lcom/zxhykj/xinzf/beans/UpBean;-><init>()V

    sput-object v0, Lcom/zxhykj/xinzf/beans/UpBean;->reqParam:Lcom/zxhykj/xinzf/beans/UpBean;

    :cond_0
    :try_start_0
    sget-object v0, Lcom/zxhykj/xinzf/beans/UpBean;->reqParam:Lcom/zxhykj/xinzf/beans/UpBean;

    iput p1, v0, Lcom/zxhykj/xinzf/beans/UpBean;->sdkVersion:I

    sget-object v0, Lcom/zxhykj/xinzf/beans/UpBean;->reqParam:Lcom/zxhykj/xinzf/beans/UpBean;

    invoke-static {}, Lcom/zxhykj/xinzf/d/b;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zxhykj/xinzf/beans/UpBean;->sysVersion:Ljava/lang/String;

    invoke-static {p2}, Lcom/zxhykj/xinzf/g/i;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Lcom/zxhykj/xinzf/g/i;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/zxhykj/xinzf/beans/UpBean;->reqParam:Lcom/zxhykj/xinzf/beans/UpBean;

    iput-object p2, v0, Lcom/zxhykj/xinzf/beans/UpBean;->appCode:Ljava/lang/String;

    sget-object v0, Lcom/zxhykj/xinzf/beans/UpBean;->reqParam:Lcom/zxhykj/xinzf/beans/UpBean;

    iput-object p3, v0, Lcom/zxhykj/xinzf/beans/UpBean;->packCode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/zxhykj/xinzf/beans/UpBean;->reqParam:Lcom/zxhykj/xinzf/beans/UpBean;

    return-object v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/zxhykj/xinzf/beans/UpBean;->reqParam:Lcom/zxhykj/xinzf/beans/UpBean;

    const-string v1, ""

    iput-object v1, v0, Lcom/zxhykj/xinzf/beans/UpBean;->appCode:Ljava/lang/String;

    sget-object v0, Lcom/zxhykj/xinzf/beans/UpBean;->reqParam:Lcom/zxhykj/xinzf/beans/UpBean;

    const-string v1, ""

    iput-object v1, v0, Lcom/zxhykj/xinzf/beans/UpBean;->packCode:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/zxhykj/xinzf/beans/UpBean;->reqParam:Lcom/zxhykj/xinzf/beans/UpBean;

    const-string v1, ""

    iput-object v1, v0, Lcom/zxhykj/xinzf/beans/UpBean;->appCode:Ljava/lang/String;

    sget-object v0, Lcom/zxhykj/xinzf/beans/UpBean;->reqParam:Lcom/zxhykj/xinzf/beans/UpBean;

    const-string v1, ""

    iput-object v1, v0, Lcom/zxhykj/xinzf/beans/UpBean;->packCode:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getAppCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zxhykj/xinzf/beans/UpBean;->appCode:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonParam()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zxhykj/xinzf/beans/UpBean;->jsonParam:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zxhykj/xinzf/beans/UpBean;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zxhykj/xinzf/beans/UpBean;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getPackCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zxhykj/xinzf/beans/UpBean;->packCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()I
    .locals 1

    iget v0, p0, Lcom/zxhykj/xinzf/beans/UpBean;->sdkVersion:I

    return v0
.end method

.method public getSysVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zxhykj/xinzf/beans/UpBean;->sysVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setAppCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zxhykj/xinzf/beans/UpBean;->appCode:Ljava/lang/String;

    return-void
.end method

.method public setJsonParam(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zxhykj/xinzf/beans/UpBean;->jsonParam:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zxhykj/xinzf/beans/UpBean;->key:Ljava/lang/String;

    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zxhykj/xinzf/beans/UpBean;->md5:Ljava/lang/String;

    return-void
.end method

.method public setPackCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zxhykj/xinzf/beans/UpBean;->packCode:Ljava/lang/String;

    return-void
.end method

.method public setSdkVersion(I)V
    .locals 0

    iput p1, p0, Lcom/zxhykj/xinzf/beans/UpBean;->sdkVersion:I

    return-void
.end method

.method public setSysVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zxhykj/xinzf/beans/UpBean;->sysVersion:Ljava/lang/String;

    return-void
.end method
