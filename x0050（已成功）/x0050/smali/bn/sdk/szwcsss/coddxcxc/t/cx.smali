.class Lbn/sdk/szwcsss/coddxcxc/t/cx;
.super Lbn/sdk/szwcsss/coddxcxc/z/aa;


# instance fields
.field final synthetic b:Lbn/sdk/szwcsss/coddxcxc/t/b;


# direct methods
.method private constructor <init>(Lbn/sdk/szwcsss/coddxcxc/t/b;)V
    .locals 0

    iput-object p1, p0, Lbn/sdk/szwcsss/coddxcxc/t/cx;->b:Lbn/sdk/szwcsss/coddxcxc/t/b;

    invoke-direct {p0}, Lbn/sdk/szwcsss/coddxcxc/z/aa;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbn/sdk/szwcsss/coddxcxc/t/b;Lbn/sdk/szwcsss/coddxcxc/t/for;)V
    .locals 0

    invoke-direct {p0, p1}, Lbn/sdk/szwcsss/coddxcxc/t/cx;-><init>(Lbn/sdk/szwcsss/coddxcxc/t/b;)V

    return-void
.end method


# virtual methods
.method public b(Lbn/sdk/szwcsss/coddxcxc/ac/b;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    const-string v0, "DsyncInfoHttpListener onYYHttpResponse start"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lbn/sdk/szwcsss/coddxcxc/ac/b;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "DsyncInfoHttpListener isValid Exception"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "DsyncInfoHttpListener sign msg :%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lbn/sdk/szwcsss/coddxcxc/ac/b;->cx()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Lorg/json/JSONArray;

    invoke-virtual {p1}, Lbn/sdk/szwcsss/coddxcxc/ac/b;->cx()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/t/cx;->b:Lbn/sdk/szwcsss/coddxcxc/t/b;

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/t/b;->b(Lbn/sdk/szwcsss/coddxcxc/t/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    const-string v0, "DsyncInfoHttpListener parseJSon"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    move v1, v2

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-class v4, Lbn/sdk/szwcsss/coddxcxc/w/for;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lbn/sdk/szwcsss/coddxcxc/y/aa;->for(Ljava/lang/Class;Ljava/lang/String;)Lbn/sdk/szwcsss/coddxcxc/y/cx;

    move-result-object v0

    check-cast v0, Lbn/sdk/szwcsss/coddxcxc/w/for;

    const-string v4, "DsyncInfoHttpListener add %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/w/for;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lbn/sdk/szwcsss/coddxcxc/t/cx;->b:Lbn/sdk/szwcsss/coddxcxc/t/b;

    invoke-static {v4}, Lbn/sdk/szwcsss/coddxcxc/t/b;->b(Lbn/sdk/szwcsss/coddxcxc/t/b;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/t/cx;->b:Lbn/sdk/szwcsss/coddxcxc/t/b;

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/t/cx;->b:Lbn/sdk/szwcsss/coddxcxc/t/b;

    invoke-static {v1}, Lbn/sdk/szwcsss/coddxcxc/t/b;->for(Lbn/sdk/szwcsss/coddxcxc/t/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/t/b;->b(Lbn/sdk/szwcsss/coddxcxc/t/b;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const-string v0, "DsyncInfoHttpListener onYYHttpResponse end"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DsyncInfoHttpListener rsp exception: %s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->for(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method
