.class Lbn/sdk/szwcsss/common/y/synchronized;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic b:Lbn/sdk/szwcsss/common/y/cx;


# direct methods
.method private constructor <init>(Lbn/sdk/szwcsss/common/y/cx;)V
    .locals 0

    iput-object p1, p0, Lbn/sdk/szwcsss/common/y/synchronized;->b:Lbn/sdk/szwcsss/common/y/cx;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbn/sdk/szwcsss/common/y/cx;Lbn/sdk/szwcsss/common/y/aa;)V
    .locals 0

    invoke-direct {p0, p1}, Lbn/sdk/szwcsss/common/y/synchronized;-><init>(Lbn/sdk/szwcsss/common/y/cx;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    const-string v0, "MyPaySwitchTask run "

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/synchronized;->b:Lbn/sdk/szwcsss/common/y/cx;

    invoke-static {v0}, Lbn/sdk/szwcsss/common/y/cx;->aa(Lbn/sdk/szwcsss/common/y/cx;)Lbn/sdk/szwcsss/coddxcxc/x/implements;

    move-result-object v0

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->cx()V

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/synchronized;->b:Lbn/sdk/szwcsss/common/y/cx;

    invoke-static {v0}, Lbn/sdk/szwcsss/common/y/cx;->sdfsf(Lbn/sdk/szwcsss/common/y/cx;)I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/synchronized;->b:Lbn/sdk/szwcsss/common/y/cx;

    invoke-static {v0}, Lbn/sdk/szwcsss/common/y/cx;->a(Lbn/sdk/szwcsss/common/y/cx;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
