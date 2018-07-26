.class public Lcom/zy/hez/model/ReqParam;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static reqParam:Lcom/zy/hez/model/ReqParam; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private appCode:Ljava/lang/Integer;

.field private packCode:Ljava/lang/String;

.field private sdkVersion:I

.field private sysVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Lcom/zy/hez/model/ReqParam;
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/zy/hez/model/ReqParam;->reqParam:Lcom/zy/hez/model/ReqParam;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zy/hez/model/ReqParam;

    invoke-direct {v0}, Lcom/zy/hez/model/ReqParam;-><init>()V

    sput-object v0, Lcom/zy/hez/model/ReqParam;->reqParam:Lcom/zy/hez/model/ReqParam;

    :cond_0
    :try_start_0
    sget-object v0, Lcom/zy/hez/model/ReqParam;->reqParam:Lcom/zy/hez/model/ReqParam;

    iput p1, v0, Lcom/zy/hez/model/ReqParam;->sdkVersion:I

    sget-object v0, Lcom/zy/hez/model/ReqParam;->reqParam:Lcom/zy/hez/model/ReqParam;

    invoke-static {}, Lcom/zy/hez/c/f;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zy/hez/model/ReqParam;->sysVersion:Ljava/lang/String;

    invoke-static {p2}, Lcom/zy/hez/c/j;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/zy/hez/c/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Lcom/zy/hez/c/j;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/zy/hez/model/ReqParam;->reqParam:Lcom/zy/hez/model/ReqParam;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/zy/hez/model/ReqParam;->appCode:Ljava/lang/Integer;

    sget-object v0, Lcom/zy/hez/model/ReqParam;->reqParam:Lcom/zy/hez/model/ReqParam;

    iput-object p3, v0, Lcom/zy/hez/model/ReqParam;->packCode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/zy/hez/model/ReqParam;->reqParam:Lcom/zy/hez/model/ReqParam;

    return-object v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/zy/hez/model/ReqParam;->reqParam:Lcom/zy/hez/model/ReqParam;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/zy/hez/model/ReqParam;->appCode:Ljava/lang/Integer;

    sget-object v0, Lcom/zy/hez/model/ReqParam;->reqParam:Lcom/zy/hez/model/ReqParam;

    const-string v1, ""

    iput-object v1, v0, Lcom/zy/hez/model/ReqParam;->packCode:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/zy/hez/model/ReqParam;->reqParam:Lcom/zy/hez/model/ReqParam;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/zy/hez/model/ReqParam;->appCode:Ljava/lang/Integer;

    sget-object v0, Lcom/zy/hez/model/ReqParam;->reqParam:Lcom/zy/hez/model/ReqParam;

    const-string v1, ""

    iput-object v1, v0, Lcom/zy/hez/model/ReqParam;->packCode:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getAppCode()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/zy/hez/model/ReqParam;->appCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPackCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zy/hez/model/ReqParam;->packCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()I
    .locals 1

    iget v0, p0, Lcom/zy/hez/model/ReqParam;->sdkVersion:I

    return v0
.end method

.method public getSysVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zy/hez/model/ReqParam;->sysVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setAppCode(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/zy/hez/model/ReqParam;->appCode:Ljava/lang/Integer;

    return-void
.end method

.method public setPackCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zy/hez/model/ReqParam;->packCode:Ljava/lang/String;

    return-void
.end method

.method public setSdkVersion(I)V
    .locals 0

    iput p1, p0, Lcom/zy/hez/model/ReqParam;->sdkVersion:I

    return-void
.end method

.method public setSysVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zy/hez/model/ReqParam;->sysVersion:Ljava/lang/String;

    return-void
.end method
