.class public abstract Lbn/sdk/szwcsss/coddxcxc/z/aa;
.super Lbn/sdk/szwcsss/coddxcxc/z/cx;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbn/sdk/szwcsss/coddxcxc/z/cx;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract b(Lbn/sdk/szwcsss/coddxcxc/ac/b;)V
.end method

.method public b(Ljava/lang/String;)V
    .locals 5

    const-string v0, "YYHttpResultListener start"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    sget-object v1, Lbn/sdk/szwcsss/coddxcxc/ac/b;->b:Lbn/sdk/szwcsss/coddxcxc/ac/b;

    :try_start_0
    invoke-static {p1}, Lbn/sdk/szwcsss/coddxcxc/y/private;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "req onYYHttpResponse null"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->for(Ljava/lang/String;)V

    sget-object v0, Lbn/sdk/szwcsss/coddxcxc/ac/b;->b:Lbn/sdk/szwcsss/coddxcxc/ac/b;

    invoke-virtual {p0, v0}, Lbn/sdk/szwcsss/coddxcxc/z/aa;->b(Lbn/sdk/szwcsss/coddxcxc/ac/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lbn/sdk/szwcsss/coddxcxc/z/aa;->b(Lbn/sdk/szwcsss/coddxcxc/ac/b;)V

    const-string v0, "YYHttpResultListener end"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_1
    invoke-static {p1}, Lbn/sdk/szwcsss/coddxcxc/x/transient;->for(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lbn/sdk/szwcsss/coddxcxc/ac/b;

    invoke-static {v2, v0}, Lbn/sdk/szwcsss/coddxcxc/y/aa;->b(Ljava/lang/Class;Ljava/lang/String;)Lbn/sdk/szwcsss/coddxcxc/y/cx;

    move-result-object v0

    check-cast v0, Lbn/sdk/szwcsss/coddxcxc/ac/b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "req onYYHttpResponse handle Exception: %s "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->for(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lbn/sdk/szwcsss/coddxcxc/ac/b;->for:Lbn/sdk/szwcsss/coddxcxc/ac/b;

    invoke-virtual {p0, v0}, Lbn/sdk/szwcsss/coddxcxc/z/aa;->b(Lbn/sdk/szwcsss/coddxcxc/ac/b;)V

    move-object v0, v1

    goto :goto_0
.end method
