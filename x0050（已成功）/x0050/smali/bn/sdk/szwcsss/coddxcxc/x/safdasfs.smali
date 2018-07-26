.class public Lbn/sdk/szwcsss/coddxcxc/x/safdasfs;
.super Ljava/lang/Object;

# interfaces
.implements Lbn/sdk/szwcsss/coddxcxc/y/cx;


# instance fields
.field private aa:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private cx:Ljava/lang/String;

.field private for:Ljava/util/HashMap;

.field private throw:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "succ"

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/safdasfs;->cx:Ljava/lang/String;

    const-string v0, "cmd"

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/safdasfs;->aa:Ljava/lang/String;

    const-string v0, "tip"

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/safdasfs;->throw:Ljava/lang/String;

    iput-object p1, p0, Lbn/sdk/szwcsss/coddxcxc/x/safdasfs;->b:Landroid/content/Context;

    invoke-direct {p0}, Lbn/sdk/szwcsss/coddxcxc/x/safdasfs;->b()V

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/safdasfs;->for:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/safdasfs;->for:Ljava/util/HashMap;

    :cond_0
    return-void
.end method

.method private b()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/safdasfs;->b:Landroid/content/Context;

    const-string v1, "yy.dt"

    invoke-static {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/y/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/safdasfs;->for:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/safdasfs;->for:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const-string v0, "PayRecord read succ"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lbn/sdk/szwcsss/coddxcxc/x/safdasfs;->for:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "PayRecord read exception"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->for(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private cx()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/safdasfs;->b:Landroid/content/Context;

    const-string v1, "yy.dt"

    iget-object v2, p0, Lbn/sdk/szwcsss/coddxcxc/x/safdasfs;->for:Ljava/util/HashMap;

    invoke-static {v0, v1, v2}, Lbn/sdk/szwcsss/coddxcxc/y/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "PayRecord save exception"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->for(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public b(II)V
    .locals 3

    invoke-static {p1}, Lbn/sdk/szwcsss/coddxcxc/x/private;->b(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lbn/sdk/szwcsss/coddxcxc/x/safdasfs;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lbn/sdk/szwcsss/coddxcxc/x/native;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lbn/sdk/szwcsss/coddxcxc/x/native;->aa()I

    move-result v0

    sget v1, Lbn/sdk/szwcsss/coddxcxc/x/import;->transient:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lbn/sdk/szwcsss/coddxcxc/x/native;->throw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v2, v0}, Lbn/sdk/szwcsss/coddxcxc/x/safdasfs;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/safdasfs;->for:Ljava/util/HashMap;

    if-eqz v0, :cond_6

    :try_start_0
    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/safdasfs;->for:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/safdasfs;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p2, :cond_2

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/safdasfs;->throw:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p3, :cond_3

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/safdasfs;->cx:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/safdasfs;->for:Ljava/util/HashMap;

    if-nez v1, :cond_5

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/safdasfs;->for:Ljava/util/HashMap;

    invoke-direct {p0}, Lbn/sdk/szwcsss/coddxcxc/x/safdasfs;->cx()V

    const-string v0, "PayRecord setRecord save"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->cx(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbn/sdk/szwcsss/coddxcxc/x/safdasfs;->for:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/safdasfs;->for:Ljava/util/HashMap;

    const-string v0, "PayRecord setRecord save2"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->cx(Ljava/lang/String;)V

    invoke-direct {p0}, Lbn/sdk/szwcsss/coddxcxc/x/safdasfs;->cx()V

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public for()Ljava/lang/String;
    .locals 1

    const-string v0, "e"

    return-object v0
.end method
