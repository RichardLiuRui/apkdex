.class public Lbn/sdk/szwcsss/common/y/b;
.super Ljava/lang/Object;


# instance fields
.field private aa:Lbn/sdk/szwcsss/coddxcxc/x/implements;

.field private b:Landroid/content/Context;

.field private cx:Ljava/lang/String;

.field private for:Ljava/util/ArrayList;

.field private throw:Lbn/sdk/szwcsss/common/y/cx;

.field private while:J


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbn/sdk/szwcsss/common/y/b;->b:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbn/sdk/szwcsss/common/y/b;->for:Ljava/util/ArrayList;

    iput-wide p2, p0, Lbn/sdk/szwcsss/common/y/b;->while:J

    return-void
.end method

.method static synthetic aa(Lbn/sdk/szwcsss/common/y/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lbn/sdk/szwcsss/common/y/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/b;->cx:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 3

    const-string v0, "startParalleTimer"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/b;->for:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/b;->for:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "startParalleTimer mPayQueueArrayList is null "

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/b;->for:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbn/sdk/szwcsss/coddxcxc/w/implements;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/w/implements;->b()I

    move-result v1

    invoke-static {v1}, Lbn/sdk/szwcsss/coddxcxc/x/private;->b(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "startParalleTimer schedule  start"

    invoke-static {v2}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    new-instance v2, Lbn/sdk/szwcsss/common/y/for;

    invoke-direct {v2, p0, v0, v1}, Lbn/sdk/szwcsss/common/y/for;-><init>(Lbn/sdk/szwcsss/common/y/b;Lbn/sdk/szwcsss/coddxcxc/w/implements;Ljava/lang/String;)V

    invoke-virtual {v2}, Lbn/sdk/szwcsss/common/y/for;->b()V

    goto :goto_0
.end method

.method static synthetic cx(Lbn/sdk/szwcsss/common/y/b;)Lbn/sdk/szwcsss/common/y/cx;
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/b;->throw:Lbn/sdk/szwcsss/common/y/cx;

    return-object v0
.end method

.method static synthetic for(Lbn/sdk/szwcsss/common/y/b;)J
    .locals 2

    iget-wide v0, p0, Lbn/sdk/szwcsss/common/y/b;->while:J

    return-wide v0
.end method

.method static synthetic throw(Lbn/sdk/szwcsss/common/y/b;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/b;->for:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic while(Lbn/sdk/szwcsss/common/y/b;)V
    .locals 0

    invoke-direct {p0}, Lbn/sdk/szwcsss/common/y/b;->b()V

    return-void
.end method


# virtual methods
.method public b(Lbn/sdk/szwcsss/coddxcxc/x/implements;Ljava/lang/String;Lbn/sdk/szwcsss/common/y/cx;)V
    .locals 4

    const-string v0, "startParallePay"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    iput-object p1, p0, Lbn/sdk/szwcsss/common/y/b;->aa:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    iput-object p2, p0, Lbn/sdk/szwcsss/common/y/b;->cx:Ljava/lang/String;

    iput-object p3, p0, Lbn/sdk/szwcsss/common/y/b;->throw:Lbn/sdk/szwcsss/common/y/cx;

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/b;->for:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/b;->for:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/b;->aa:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->private()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbn/sdk/szwcsss/coddxcxc/w/implements;

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/w/implements;->b()I

    move-result v2

    invoke-static {v2}, Lbn/sdk/szwcsss/coddxcxc/x/private;->b(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbn/sdk/szwcsss/common/y/b;->for:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startParallePay pid:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lbn/sdk/szwcsss/common/y/b;->b()V

    return-void
.end method
