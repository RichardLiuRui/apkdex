.class public Lcom/testin/agent/base/TestinGVariables;
.super Landroid/app/Application;


# static fields
.field public static j:J

.field public static k:J

.field public static l:Lcom/testin/agent/c/c;

.field private static r:Lcom/testin/agent/base/TestinGVariables;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Landroid/content/Context;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Z

.field public m:Ljava/lang/Long;

.field public n:Ljava/lang/Long;

.field public o:Ljava/util/Set;

.field private p:Lcom/testin/agent/c/f;

.field private q:Lcom/testin/agent/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/testin/agent/base/TestinGVariables;->j:J

    sput-wide v0, Lcom/testin/agent/base/TestinGVariables;->k:J

    new-instance v0, Lcom/testin/agent/c/c;

    invoke-direct {v0}, Lcom/testin/agent/c/c;-><init>()V

    sput-object v0, Lcom/testin/agent/base/TestinGVariables;->l:Lcom/testin/agent/c/c;

    const/4 v0, 0x0

    sput-object v0, Lcom/testin/agent/base/TestinGVariables;->r:Lcom/testin/agent/base/TestinGVariables;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/testin/agent/base/TestinGVariables;->a:Z

    iput-boolean v2, p0, Lcom/testin/agent/base/TestinGVariables;->b:Z

    iput-boolean v2, p0, Lcom/testin/agent/base/TestinGVariables;->c:Z

    iput-boolean v2, p0, Lcom/testin/agent/base/TestinGVariables;->d:Z

    iput-object v1, p0, Lcom/testin/agent/base/TestinGVariables;->e:Landroid/content/Context;

    const-string v0, ""

    iput-object v0, p0, Lcom/testin/agent/base/TestinGVariables;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/testin/agent/base/TestinGVariables;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/testin/agent/base/TestinGVariables;->h:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/testin/agent/base/TestinGVariables;->i:Z

    iput-object v1, p0, Lcom/testin/agent/base/TestinGVariables;->p:Lcom/testin/agent/c/f;

    iput-object v1, p0, Lcom/testin/agent/base/TestinGVariables;->m:Ljava/lang/Long;

    iput-object v1, p0, Lcom/testin/agent/base/TestinGVariables;->n:Ljava/lang/Long;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/testin/agent/base/TestinGVariables;->o:Ljava/util/Set;

    iput-object v1, p0, Lcom/testin/agent/base/TestinGVariables;->q:Lcom/testin/agent/c/e;

    invoke-direct {p0}, Lcom/testin/agent/base/TestinGVariables;->d()V

    return-void
.end method

.method public static declared-synchronized c()Lcom/testin/agent/base/TestinGVariables;
    .locals 2

    const-class v1, Lcom/testin/agent/base/TestinGVariables;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/testin/agent/base/TestinGVariables;->r:Lcom/testin/agent/base/TestinGVariables;

    if-nez v0, :cond_0

    new-instance v0, Lcom/testin/agent/base/TestinGVariables;

    invoke-direct {v0}, Lcom/testin/agent/base/TestinGVariables;-><init>()V

    sput-object v0, Lcom/testin/agent/base/TestinGVariables;->r:Lcom/testin/agent/base/TestinGVariables;

    :cond_0
    sget-object v0, Lcom/testin/agent/base/TestinGVariables;->r:Lcom/testin/agent/base/TestinGVariables;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private d()V
    .locals 1

    new-instance v0, Lcom/testin/agent/base/a;

    invoke-direct {v0, p0}, Lcom/testin/agent/base/a;-><init>(Lcom/testin/agent/base/TestinGVariables;)V

    invoke-virtual {v0}, Lcom/testin/agent/base/a;->start()V

    return-void
.end method


# virtual methods
.method public a()Lcom/testin/agent/c/f;
    .locals 1

    iget-object v0, p0, Lcom/testin/agent/base/TestinGVariables;->p:Lcom/testin/agent/c/f;

    return-object v0
.end method

.method public a(Lcom/testin/agent/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/testin/agent/base/TestinGVariables;->q:Lcom/testin/agent/c/e;

    return-void
.end method

.method public a(Lcom/testin/agent/c/f;)V
    .locals 0

    iput-object p1, p0, Lcom/testin/agent/base/TestinGVariables;->p:Lcom/testin/agent/c/f;

    return-void
.end method

.method public b()Lcom/testin/agent/c/e;
    .locals 1

    iget-object v0, p0, Lcom/testin/agent/base/TestinGVariables;->q:Lcom/testin/agent/c/e;

    return-object v0
.end method
