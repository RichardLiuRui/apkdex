.class Lbn/sdk/szwcsss/coddxcxc/x/synchronized;
.super Lbn/sdk/szwcsss/coddxcxc/z/aa;


# instance fields
.field final synthetic b:Lbn/sdk/szwcsss/coddxcxc/x/implements;


# direct methods
.method private constructor <init>(Lbn/sdk/szwcsss/coddxcxc/x/implements;)V
    .locals 0

    iput-object p1, p0, Lbn/sdk/szwcsss/coddxcxc/x/synchronized;->b:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    invoke-direct {p0}, Lbn/sdk/szwcsss/coddxcxc/z/aa;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbn/sdk/szwcsss/coddxcxc/x/implements;Lbn/sdk/szwcsss/coddxcxc/x/instanceof;)V
    .locals 0

    invoke-direct {p0, p1}, Lbn/sdk/szwcsss/coddxcxc/x/synchronized;-><init>(Lbn/sdk/szwcsss/coddxcxc/x/implements;)V

    return-void
.end method


# virtual methods
.method public b(Lbn/sdk/szwcsss/coddxcxc/ac/b;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "GetPaySwitchHttpListener onYYHttpResponse start"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lbn/sdk/szwcsss/coddxcxc/ac/b;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "GetPaySwitchHttpListener isValid Exception"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lbn/sdk/szwcsss/coddxcxc/ac/b;->cx()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lbn/sdk/szwcsss/coddxcxc/x/synchronized;->b:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    const-string v0, "a"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    invoke-static {v4, v0}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->b(Lbn/sdk/szwcsss/coddxcxc/x/implements;I)I

    iget-object v4, p0, Lbn/sdk/szwcsss/coddxcxc/x/synchronized;->b:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    const-string v0, "b"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    :goto_2
    invoke-static {v4, v0}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->b(Lbn/sdk/szwcsss/coddxcxc/x/implements;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lbn/sdk/szwcsss/coddxcxc/x/synchronized;->b:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    const-string v0, "c"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x2710

    :goto_3
    invoke-static {v4, v0}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->for(Lbn/sdk/szwcsss/coddxcxc/x/implements;I)I

    iget-object v4, p0, Lbn/sdk/szwcsss/coddxcxc/x/synchronized;->b:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    const-string v0, "d"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_4
    invoke-static {v4, v0}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->cx(Lbn/sdk/szwcsss/coddxcxc/x/implements;I)I

    const-string v0, "GetPaySwitchHttpListener onYYHttpResponse end"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    const-string v0, "GetPaySwitchHttpListener onYYHttpResponse end"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v0, "a"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_3
    const-string v0, "b"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string v0, "c"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    :cond_5
    const-string v0, "d"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v3, "GetPaySwitchHttpListener rsp exception: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {v3, v2}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->for(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5
.end method
