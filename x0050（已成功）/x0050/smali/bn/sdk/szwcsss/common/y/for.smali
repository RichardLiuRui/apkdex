.class Lbn/sdk/szwcsss/common/y/for;
.super Ljava/lang/Object;


# instance fields
.field final synthetic b:Lbn/sdk/szwcsss/common/y/b;

.field private cx:Ljava/lang/String;

.field private for:Lbn/sdk/szwcsss/coddxcxc/w/implements;


# direct methods
.method public constructor <init>(Lbn/sdk/szwcsss/common/y/b;Lbn/sdk/szwcsss/coddxcxc/w/implements;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbn/sdk/szwcsss/common/y/for;->b:Lbn/sdk/szwcsss/common/y/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lbn/sdk/szwcsss/common/y/for;->for:Lbn/sdk/szwcsss/coddxcxc/w/implements;

    iput-object p3, p0, Lbn/sdk/szwcsss/common/y/for;->cx:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 6

    :try_start_0
    const-string v0, "MyParallePayTask run"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/for;->b:Lbn/sdk/szwcsss/common/y/b;

    invoke-static {v0}, Lbn/sdk/szwcsss/common/y/b;->cx(Lbn/sdk/szwcsss/common/y/b;)Lbn/sdk/szwcsss/common/y/cx;

    move-result-object v0

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/for;->b:Lbn/sdk/szwcsss/common/y/b;

    invoke-static {v1}, Lbn/sdk/szwcsss/common/y/b;->b(Lbn/sdk/szwcsss/common/y/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbn/sdk/szwcsss/common/y/for;->cx:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lbn/sdk/szwcsss/common/y/for;->b:Lbn/sdk/szwcsss/common/y/b;

    invoke-static {v4}, Lbn/sdk/szwcsss/common/y/b;->for(Lbn/sdk/szwcsss/common/y/b;)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lbn/sdk/szwcsss/common/y/cx;->b(Ljava/lang/String;Ljava/lang/String;ZJ)Lbn/sdk/szwcsss/coddxcxc/x/native;

    move-result-object v5

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v0, "orderid"

    invoke-virtual {v5}, Lbn/sdk/szwcsss/coddxcxc/x/native;->cx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "p1"

    const-string v1, ""

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "p2"

    const-string v1, ""

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "p3"

    const-string v1, ""

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/for;->b:Lbn/sdk/szwcsss/common/y/b;

    invoke-static {v0}, Lbn/sdk/szwcsss/common/y/b;->cx(Lbn/sdk/szwcsss/common/y/b;)Lbn/sdk/szwcsss/common/y/cx;

    move-result-object v0

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/for;->b:Lbn/sdk/szwcsss/common/y/b;

    invoke-static {v1}, Lbn/sdk/szwcsss/common/y/b;->aa(Lbn/sdk/szwcsss/common/y/b;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lbn/sdk/szwcsss/common/y/for;->b:Lbn/sdk/szwcsss/common/y/b;

    invoke-static {v2}, Lbn/sdk/szwcsss/common/y/b;->b(Lbn/sdk/szwcsss/common/y/b;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbn/sdk/szwcsss/common/y/for;->cx:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lbn/sdk/szwcsss/common/y/cx;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lbn/sdk/szwcsss/coddxcxc/x/native;)Z

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/for;->b:Lbn/sdk/szwcsss/common/y/b;

    invoke-static {v0}, Lbn/sdk/szwcsss/common/y/b;->throw(Lbn/sdk/szwcsss/common/y/b;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/for;->for:Lbn/sdk/szwcsss/coddxcxc/w/implements;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/for;->b:Lbn/sdk/szwcsss/common/y/b;

    invoke-static {v0}, Lbn/sdk/szwcsss/common/y/b;->while(Lbn/sdk/szwcsss/common/y/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
