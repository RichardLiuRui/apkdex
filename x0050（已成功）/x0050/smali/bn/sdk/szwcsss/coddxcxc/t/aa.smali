.class Lbn/sdk/szwcsss/coddxcxc/t/aa;
.super Lbn/sdk/szwcsss/coddxcxc/z/cx;


# instance fields
.field final synthetic b:Lbn/sdk/szwcsss/coddxcxc/t/b;


# direct methods
.method private constructor <init>(Lbn/sdk/szwcsss/coddxcxc/t/b;)V
    .locals 0

    iput-object p1, p0, Lbn/sdk/szwcsss/coddxcxc/t/aa;->b:Lbn/sdk/szwcsss/coddxcxc/t/b;

    invoke-direct {p0}, Lbn/sdk/szwcsss/coddxcxc/z/cx;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbn/sdk/szwcsss/coddxcxc/t/b;Lbn/sdk/szwcsss/coddxcxc/t/for;)V
    .locals 0

    invoke-direct {p0, p1}, Lbn/sdk/szwcsss/coddxcxc/t/aa;-><init>(Lbn/sdk/szwcsss/coddxcxc/t/b;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "LoadFileThread onYYHttpResponse "

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/t/aa;->b:Lbn/sdk/szwcsss/coddxcxc/t/b;

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/t/aa;->b:Lbn/sdk/szwcsss/coddxcxc/t/b;

    invoke-static {v1}, Lbn/sdk/szwcsss/coddxcxc/t/b;->for(Lbn/sdk/szwcsss/coddxcxc/t/b;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lbn/sdk/szwcsss/coddxcxc/t/aa;->b:Lbn/sdk/szwcsss/coddxcxc/t/b;

    invoke-static {v2}, Lbn/sdk/szwcsss/coddxcxc/t/b;->cx(Lbn/sdk/szwcsss/coddxcxc/t/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbn/sdk/szwcsss/coddxcxc/t/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
