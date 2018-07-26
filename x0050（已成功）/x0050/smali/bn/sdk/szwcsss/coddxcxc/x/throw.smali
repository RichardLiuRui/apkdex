.class Lbn/sdk/szwcsss/coddxcxc/x/throw;
.super Lbn/sdk/szwcsss/coddxcxc/z/cx;


# instance fields
.field final synthetic b:Lbn/sdk/szwcsss/coddxcxc/x/cx;


# direct methods
.method private constructor <init>(Lbn/sdk/szwcsss/coddxcxc/x/cx;)V
    .locals 0

    iput-object p1, p0, Lbn/sdk/szwcsss/coddxcxc/x/throw;->b:Lbn/sdk/szwcsss/coddxcxc/x/cx;

    invoke-direct {p0}, Lbn/sdk/szwcsss/coddxcxc/z/cx;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbn/sdk/szwcsss/coddxcxc/x/cx;Lbn/sdk/szwcsss/coddxcxc/x/aa;)V
    .locals 0

    invoke-direct {p0, p1}, Lbn/sdk/szwcsss/coddxcxc/x/throw;-><init>(Lbn/sdk/szwcsss/coddxcxc/x/cx;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    :try_start_0
    const-string v0, "InitChannelHttpListener rsp null"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->for(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "InitChannelHttpListener call"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    invoke-static {p1}, Lbn/sdk/szwcsss/coddxcxc/x/transient;->for(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lbn/sdk/szwcsss/coddxcxc/w/transient;

    invoke-static {v1, v0}, Lbn/sdk/szwcsss/coddxcxc/y/aa;->b(Ljava/lang/Class;Ljava/lang/String;)Lbn/sdk/szwcsss/coddxcxc/y/cx;

    move-result-object v0

    check-cast v0, Lbn/sdk/szwcsss/coddxcxc/w/transient;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/w/transient;->b()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v0, "InitChannelHttpListener Result noValid"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->for(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InitChannelHttpListener Exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/w/transient;->cx()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InitChannelHttpListener json: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "a"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v0, "b"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "b"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v2, :cond_5

    const-string v1, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/throw;->b:Lbn/sdk/szwcsss/coddxcxc/x/cx;

    invoke-virtual {v1}, Lbn/sdk/szwcsss/coddxcxc/x/cx;->cx()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "checkChannelInitStatus is ture"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, ""

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InitChannelHttpListener init channel:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/throw;->b:Lbn/sdk/szwcsss/coddxcxc/x/cx;

    invoke-static {v1, v2}, Lbn/sdk/szwcsss/coddxcxc/x/cx;->b(Lbn/sdk/szwcsss/coddxcxc/x/cx;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2}, Lbn/sdk/szwcsss/common/y/winit;->initWc(Ljava/lang/String;)V

    invoke-static {v2}, Lbn/sdk/szwcsss/common/y/winit;->initTk(Ljava/lang/String;)V

    invoke-static {}, Lbn/sdk/szwcsss/common/y/wyyp;->getInstance()Lbn/sdk/szwcsss/common/y/wyyp;

    move-result-object v1

    invoke-virtual {v1}, Lbn/sdk/szwcsss/common/y/wyyp;->retryInit()V

    :cond_5
    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/private;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "^http://\\S*.action$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    sput-object v0, Lbn/sdk/szwcsss/coddxcxc/z/b;->while:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "YYHttpClientUtil set Default_URL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    :cond_6
    const-string v0, "InitChannelHttpListener rsp Over"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
