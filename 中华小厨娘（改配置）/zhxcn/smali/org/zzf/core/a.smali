.class public Lorg/zzf/core/a;
.super Ljava/lang/Object;


# static fields
.field private static F:I

.field private static G:I

.field public static b:Lorg/zzf/core/a;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private H:Z

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field public a:Lorg/zzf/core/ZhangPayCallback;

.field c:Lorg/apache/http/HttpResponse;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Lorg/apache/http/HttpResponse;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field private j:Ljava/util/List;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Landroid/os/Handler;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lorg/zzf/core/a;->F:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/zzf/core/a;->H:Z

    iput-object v1, p0, Lorg/zzf/core/a;->c:Lorg/apache/http/HttpResponse;

    iput-object v1, p0, Lorg/zzf/core/a;->d:Ljava/lang/String;

    iput-object v1, p0, Lorg/zzf/core/a;->e:Ljava/lang/String;

    iput-object v1, p0, Lorg/zzf/core/a;->f:Ljava/lang/String;

    const-string v0, "http://112.74.111.56:9039/gamesit/jysdk/initsdk?"

    iput-object v0, p0, Lorg/zzf/core/a;->I:Ljava/lang/String;

    const-string v0, "http://112.74.111.56:9039//gamesit/xysdk/init"

    iput-object v0, p0, Lorg/zzf/core/a;->J:Ljava/lang/String;

    iput-object v1, p0, Lorg/zzf/core/a;->g:Lorg/apache/http/HttpResponse;

    iput-object v1, p0, Lorg/zzf/core/a;->h:Ljava/lang/String;

    iput-object v1, p0, Lorg/zzf/core/a;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lorg/zzf/core/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static a()Lorg/zzf/core/a;
    .locals 1

    sget-object v0, Lorg/zzf/core/a;->b:Lorg/zzf/core/a;

    if-nez v0, :cond_0

    new-instance v0, Lorg/zzf/core/a;

    invoke-direct {v0}, Lorg/zzf/core/a;-><init>()V

    sput-object v0, Lorg/zzf/core/a;->b:Lorg/zzf/core/a;

    :cond_0
    sget-object v0, Lorg/zzf/core/a;->b:Lorg/zzf/core/a;

    return-object v0
.end method

.method private a(Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/zzf/core/h;

    invoke-direct {v1, p0, p1, p2}, Lorg/zzf/core/h;-><init>(Lorg/zzf/core/a;Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/zzf/core/f/a;

    invoke-direct {v0, p1}, Lorg/zzf/core/f/a;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    invoke-static {p1, v2}, Lorg/zzf/core/b/h;->h(Landroid/content/Context;I)V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lorg/zzf/core/b/h;->k(Landroid/content/Context;I)V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/zzf/core/b/h;->D(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->L(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->M(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, ""

    invoke-static {p1, v0}, Lorg/zzf/core/b/h;->B(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    const-string v0, ""

    invoke-static {p1, v0}, Lorg/zzf/core/b/h;->C(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    invoke-static {p1, v2}, Lorg/zzf/core/b/h;->i(Landroid/content/Context;I)V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    invoke-static {p1, v2}, Lorg/zzf/core/b/h;->j(Landroid/content/Context;I)V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const-string v1, "CANCERFEE"

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->P(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "channelId"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/a;->k:Ljava/lang/String;

    const-string v0, "priciePointId"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/a;->l:Ljava/lang/String;

    const-string v0, "money"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/a;->m:Ljava/lang/String;

    const-string v0, "cpparam"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/zzf/core/a;->n:Ljava/lang/String;

    const-string v0, "key"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/a;->p:Ljava/lang/String;

    const-string v0, "appId"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/a;->q:Ljava/lang/String;

    const-string v0, "qd"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/a;->r:Ljava/lang/String;

    const-string v0, "priciePointName"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/zzf/core/a;->o:Ljava/lang/String;

    const-string v0, "priciePointDec"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/zzf/core/a;->s:Ljava/lang/String;

    const-string v0, "appName"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/zzf/core/a;->t:Ljava/lang/String;

    iget-object v0, p0, Lorg/zzf/core/a;->u:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/zzf/core/a;->u:Ljava/lang/String;

    iget-object v0, p0, Lorg/zzf/core/a;->n:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/a;->n:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/zzf/core/a;->n:Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/a;->n:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/zzf/core/a;->s:Ljava/lang/String;

    const-string v1, "X.XX\u5143"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/zzf/core/a;->s:Ljava/lang/String;

    const-string v1, "x.xx\u5143"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_2
    sput v2, Lorg/zzf/core/a;->F:I

    :goto_1
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    iget-object v0, p0, Lorg/zzf/core/a;->l:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/zzf/core/b/h;->o(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    iget-object v0, p0, Lorg/zzf/core/a;->t:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/zzf/core/b/h;->p(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    iget-object v0, p0, Lorg/zzf/core/a;->u:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/zzf/core/b/h;->p(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    iget-object v0, p0, Lorg/zzf/core/a;->s:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/zzf/core/b/h;->q(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/h;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/h;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_4

    :cond_3
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->j(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/a;->o:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->j(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/h;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/h;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_6

    :cond_5
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->k(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/a;->m:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->k(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/zzf/core/a;->k:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/zzf/core/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_9

    invoke-virtual {p0, v0}, Lorg/zzf/core/a;->b(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/zzf/core/a;->a(I)V

    :cond_7
    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    sput v3, Lorg/zzf/core/a;->F:I

    const/16 v0, 0x3e0

    invoke-direct {p0, p1, v0}, Lorg/zzf/core/a;->a(Landroid/content/Context;I)V

    goto/16 :goto_1

    :cond_9
    invoke-direct {p0, p1}, Lorg/zzf/core/a;->i(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v3, :cond_7

    invoke-direct {p0, p1}, Lorg/zzf/core/a;->h(Landroid/content/Context;)V

    goto :goto_2
.end method

.method private a(Landroid/content/Context;Ljava/util/List;)V
    .locals 5

    const/high16 v4, 0x10000000

    const/16 v3, 0x457

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Lorg/zzf/core/a;->b(Landroid/content/Context;Ljava/util/List;)V

    const/16 v0, 0x3e7

    invoke-direct {p0, p1, v0}, Lorg/zzf/core/a;->a(Landroid/content/Context;I)V

    const/4 v0, 0x0

    invoke-static {p1}, Lorg/zzf/core/b/h;->d(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v1, :cond_1

    iget-object v1, p0, Lorg/zzf/core/a;->v:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lorg/zzf/core/activity/ZhangPayActivity;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "enterType"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lorg/zzf/core/a;->a(I)V

    return-void

    :cond_1
    invoke-static {p1}, Lorg/zzf/core/b/h;->d(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_2

    sget v2, Lorg/zzf/core/a;->F:I

    if-nez v2, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lorg/zzf/core/service/ZhangPayPlateService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Lorg/zzf/core/a;->a(Landroid/content/Context;)V

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/zzf/core/a;->v:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lorg/zzf/core/activity/ZhangPayActivity;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "enterType"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic a(Lorg/zzf/core/a;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/zzf/core/a;->a(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic a(Lorg/zzf/core/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/zzf/core/a;->H:Z

    return p1
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xfa0

    if-le v0, v1, :cond_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "-1"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const/16 v1, 0x276a

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->f(Landroid/content/Context;I)V

    const/4 v0, -0x1

    :cond_1
    const-string v1, "1"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const/16 v1, 0x276b

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->f(Landroid/content/Context;I)V

    const/4 v0, 0x1

    :cond_2
    const-string v1, "2"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const/16 v1, 0x276c

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->f(Landroid/content/Context;I)V

    const/4 v0, 0x2

    :cond_3
    const-string v1, "3"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const/16 v1, 0x276d

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->f(Landroid/content/Context;I)V

    const/4 v0, 0x3

    :cond_4
    const-string v1, "4"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const/16 v1, 0x276e

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->f(Landroid/content/Context;I)V

    const/4 v0, 0x4

    :cond_5
    const-string v1, "5"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const/16 v1, 0x276f

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->f(Landroid/content/Context;I)V

    const/4 v0, 0x5

    :cond_6
    const-string v1, "6"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const/16 v1, 0x2770

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->f(Landroid/content/Context;I)V

    const/4 v0, 0x6

    :cond_7
    const-string v1, "7"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const/16 v1, 0x2771

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->f(Landroid/content/Context;I)V

    const/4 v0, 0x7

    :cond_8
    const-string v1, "8"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const/16 v1, 0x2772

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->f(Landroid/content/Context;I)V

    const/16 v0, 0x8

    :cond_9
    const-string v1, "9"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const/16 v1, 0x2773

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->f(Landroid/content/Context;I)V

    const/16 v0, 0x9

    :cond_a
    const-string v1, "10"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const v1, 0x18a2e

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->f(Landroid/content/Context;I)V

    const/16 v0, 0xa

    :cond_b
    const-string v1, "11"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const v1, 0x18a2f

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->f(Landroid/content/Context;I)V

    const/16 v0, 0xb

    :cond_c
    const-string v1, "12"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const v1, 0x18a30

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->f(Landroid/content/Context;I)V

    const/16 v0, 0xc

    :cond_d
    const-string v1, "13"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const v1, 0x18a31

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->f(Landroid/content/Context;I)V

    const/16 v0, 0xd

    :cond_e
    const-string v1, "14"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const v1, 0x18a32

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->f(Landroid/content/Context;I)V

    const/16 v0, 0xe

    :cond_f
    const-string v1, "15"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const v1, 0x18a33

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->f(Landroid/content/Context;I)V

    const/16 v0, 0xf

    :cond_10
    return v0
.end method

.method static synthetic b(Lorg/zzf/core/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method private b(Landroid/content/Context;I)V
    .locals 1

    if-lez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-static {}, Lorg/zzf/core/zdx/b/a;->a()Lorg/zzf/core/zdx/b/a;

    invoke-static {p1}, Lorg/zzf/core/zdx/b/a;->c(Landroid/content/Context;)Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/util/List;)V
    .locals 3

    if-eqz p2, :cond_a

    invoke-static {}, Lorg/zzf/core/b/f;->a()Lorg/zzf/core/b/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/f;->b(Landroid/content/Context;)V

    invoke-static {}, Lorg/zzf/core/b/j;->a()Lorg/zzf/core/b/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/j;->b(Landroid/content/Context;)V

    invoke-static {}, Lorg/zzf/core/b/g;->a()Lorg/zzf/core/b/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/g;->b(Landroid/content/Context;)V

    invoke-static {}, Lorg/zzf/core/b/d;->a()Lorg/zzf/core/b/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/d;->b(Landroid/content/Context;)V

    invoke-static {}, Lorg/zzf/core/b/e;->a()Lorg/zzf/core/b/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/e;->b(Landroid/content/Context;)V

    invoke-static {}, Lorg/zzf/core/b/i;->a()Lorg/zzf/core/b/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/i;->b(Landroid/content/Context;)V

    invoke-static {}, Lorg/zzf/core/b/c;->a()Lorg/zzf/core/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/c;->b(Landroid/content/Context;)V

    invoke-static {}, Lorg/zzf/core/b/b;->a()Lorg/zzf/core/b/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/b;->b(Landroid/content/Context;)V

    invoke-static {}, Lorg/zzf/core/b/a;->a()Lorg/zzf/core/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/a;->b(Landroid/content/Context;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zzf/core/d/g;

    instance-of v2, v0, Lorg/zzf/core/d/x;

    if-eqz v2, :cond_1

    invoke-static {}, Lorg/zzf/core/b/j;->a()Lorg/zzf/core/b/j;

    move-result-object v2

    check-cast v0, Lorg/zzf/core/d/x;

    invoke-virtual {v2, v0, p1}, Lorg/zzf/core/b/j;->a(Lorg/zzf/core/d/x;Landroid/content/Context;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    instance-of v2, v0, Lorg/zzf/core/d/t;

    if-eqz v2, :cond_2

    invoke-static {}, Lorg/zzf/core/b/f;->a()Lorg/zzf/core/b/f;

    move-result-object v2

    check-cast v0, Lorg/zzf/core/d/t;

    invoke-virtual {v2, v0, p1}, Lorg/zzf/core/b/f;->a(Lorg/zzf/core/d/t;Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    instance-of v2, v0, Lorg/zzf/core/d/w;

    if-eqz v2, :cond_3

    invoke-static {}, Lorg/zzf/core/b/g;->a()Lorg/zzf/core/b/g;

    move-result-object v2

    check-cast v0, Lorg/zzf/core/d/w;

    invoke-virtual {v2, v0, p1}, Lorg/zzf/core/b/g;->a(Lorg/zzf/core/d/w;Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    instance-of v2, v0, Lorg/zzf/core/d/n;

    if-eqz v2, :cond_4

    invoke-static {}, Lorg/zzf/core/b/d;->a()Lorg/zzf/core/b/d;

    move-result-object v2

    check-cast v0, Lorg/zzf/core/d/n;

    invoke-virtual {v2, v0, p1}, Lorg/zzf/core/b/d;->a(Lorg/zzf/core/d/n;Landroid/content/Context;)V

    goto :goto_1

    :cond_4
    instance-of v2, v0, Lorg/zzf/core/d/q;

    if-eqz v2, :cond_5

    invoke-static {}, Lorg/zzf/core/b/e;->a()Lorg/zzf/core/b/e;

    move-result-object v2

    check-cast v0, Lorg/zzf/core/d/q;

    invoke-virtual {v2, v0, p1}, Lorg/zzf/core/b/e;->a(Lorg/zzf/core/d/q;Landroid/content/Context;)V

    goto :goto_1

    :cond_5
    instance-of v2, v0, Lorg/zzf/core/d/aa;

    if-eqz v2, :cond_6

    invoke-static {}, Lorg/zzf/core/b/i;->a()Lorg/zzf/core/b/i;

    move-result-object v2

    check-cast v0, Lorg/zzf/core/d/aa;

    invoke-virtual {v2, v0, p1}, Lorg/zzf/core/b/i;->a(Lorg/zzf/core/d/aa;Landroid/content/Context;)V

    goto :goto_1

    :cond_6
    instance-of v2, v0, Lorg/zzf/core/d/k;

    if-eqz v2, :cond_7

    invoke-static {}, Lorg/zzf/core/b/c;->a()Lorg/zzf/core/b/c;

    move-result-object v2

    check-cast v0, Lorg/zzf/core/d/k;

    invoke-virtual {v2, v0, p1}, Lorg/zzf/core/b/c;->a(Lorg/zzf/core/d/k;Landroid/content/Context;)V

    goto :goto_1

    :cond_7
    instance-of v2, v0, Lorg/zzf/core/d/k;

    if-eqz v2, :cond_8

    invoke-static {}, Lorg/zzf/core/b/c;->a()Lorg/zzf/core/b/c;

    move-result-object v2

    check-cast v0, Lorg/zzf/core/d/k;

    invoke-virtual {v2, v0, p1}, Lorg/zzf/core/b/c;->a(Lorg/zzf/core/d/k;Landroid/content/Context;)V

    goto :goto_1

    :cond_8
    instance-of v2, v0, Lorg/zzf/core/d/e;

    if-eqz v2, :cond_9

    invoke-static {}, Lorg/zzf/core/b/a;->a()Lorg/zzf/core/b/a;

    move-result-object v2

    check-cast v0, Lorg/zzf/core/d/e;

    invoke-virtual {v2, v0, p1}, Lorg/zzf/core/b/a;->a(Lorg/zzf/core/d/e;Landroid/content/Context;)V

    goto :goto_1

    :cond_9
    instance-of v2, v0, Lorg/zzf/core/d/f;

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/zzf/core/b/b;->a()Lorg/zzf/core/b/b;

    move-result-object v2

    check-cast v0, Lorg/zzf/core/d/f;

    invoke-virtual {v2, v0, p1}, Lorg/zzf/core/b/b;->a(Lorg/zzf/core/d/f;Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_a
    return-void
.end method

.method static synthetic c()I
    .locals 1

    sget v0, Lorg/zzf/core/a;->G:I

    return v0
.end method

.method static synthetic c(I)I
    .locals 0

    sput p0, Lorg/zzf/core/a;->G:I

    return p0
.end method

.method static synthetic c(Lorg/zzf/core/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/a;->J:Ljava/lang/String;

    return-object v0
.end method

.method private d(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/16 v0, 0x276b

    invoke-virtual {p0, v0}, Lorg/zzf/core/a;->b(I)V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x276c

    invoke-virtual {p0, v0}, Lorg/zzf/core/a;->b(I)V

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x276d

    invoke-virtual {p0, v0}, Lorg/zzf/core/a;->b(I)V

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x276e

    invoke-virtual {p0, v0}, Lorg/zzf/core/a;->b(I)V

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x276f

    invoke-virtual {p0, v0}, Lorg/zzf/core/a;->b(I)V

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x2770

    invoke-virtual {p0, v0}, Lorg/zzf/core/a;->b(I)V

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x2771

    invoke-virtual {p0, v0}, Lorg/zzf/core/a;->b(I)V

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x2772

    invoke-virtual {p0, v0}, Lorg/zzf/core/a;->b(I)V

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x2773

    invoke-virtual {p0, v0}, Lorg/zzf/core/a;->b(I)V

    goto :goto_0

    :pswitch_9
    const v0, 0x18a2e

    invoke-virtual {p0, v0}, Lorg/zzf/core/a;->b(I)V

    goto :goto_0

    :pswitch_a
    const v0, 0x18a2f

    invoke-virtual {p0, v0}, Lorg/zzf/core/a;->b(I)V

    goto :goto_0

    :pswitch_b
    const v0, 0x18a30

    invoke-virtual {p0, v0}, Lorg/zzf/core/a;->b(I)V

    goto :goto_0

    :pswitch_c
    const v0, 0x18a31

    invoke-virtual {p0, v0}, Lorg/zzf/core/a;->b(I)V

    goto :goto_0

    :pswitch_d
    const v0, 0x18a32

    invoke-virtual {p0, v0}, Lorg/zzf/core/a;->b(I)V

    goto :goto_0

    :pswitch_e
    const v0, 0x18a33

    invoke-virtual {p0, v0}, Lorg/zzf/core/a;->b(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private h(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x6

    const/4 v5, 0x5

    const/4 v0, 0x0

    sget-object v1, Lorg/zzf/core/d/ab;->f:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/zzf/core/a;->k:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/zzf/core/a;->l:Ljava/lang/String;

    aput-object v3, v2, v6

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/zzf/core/a;->m:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lorg/zzf/core/a;->n:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lorg/zzf/core/a;->q:Ljava/lang/String;

    aput-object v4, v2, v3

    iget-object v3, p0, Lorg/zzf/core/a;->r:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lorg/zzf/core/b/h;->a(Landroid/content/Context;J)V

    const-string v2, "channelId=%s&priciePointId=%s&money=%s&cpparam=%s&appId=%s&qd=%s"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/zzf/core/a;->k:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/zzf/core/a;->l:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lorg/zzf/core/a;->m:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lorg/zzf/core/a;->n:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lorg/zzf/core/a;->q:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lorg/zzf/core/a;->r:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/zzf/core/a;->p:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/zzf/core/f/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/zzf/core/a;->k:Ljava/lang/String;

    invoke-static {p1}, Lorg/zzf/core/f/n;->a(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {p1, v2, v3, v4}, Lorg/zzf/core/f/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)[Lorg/apache/http/Header;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lorg/zzf/core/f/o;->a(Ljava/lang/String;[Lorg/apache/http/Header;Landroid/content/Context;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const/16 v0, 0x3f0

    :try_start_1
    invoke-direct {p0, p1, v0}, Lorg/zzf/core/a;->a(Landroid/content/Context;I)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/zzf/core/a;->a(I)V

    const/16 v0, 0x3f0

    invoke-virtual {p0, v0}, Lorg/zzf/core/a;->b(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/zzf/core/f/o;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x3f0

    invoke-direct {p0, p1, v0}, Lorg/zzf/core/a;->a(Landroid/content/Context;I)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/zzf/core/a;->a(I)V

    const/16 v0, 0x3f0

    invoke-virtual {p0, v0}, Lorg/zzf/core/a;->b(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/zzf/core/a;->a(I)V

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-direct {p0, p1, v0}, Lorg/zzf/core/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/zzf/core/a;->a(I)V

    invoke-direct {p0, v1}, Lorg/zzf/core/a;->d(I)V

    goto :goto_1

    :cond_3
    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lorg/zzf/core/f/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/zzf/core/k;->a()Lorg/zzf/core/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/zzf/core/k;->a(Ljava/lang/String;)Ljava/io/StringReader;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    new-instance v1, Lorg/zzf/core/e/a;

    invoke-direct {v1}, Lorg/zzf/core/e/a;-><init>()V

    invoke-virtual {v1, v0, p1}, Lorg/zzf/core/e/a;->a(Ljava/io/StringReader;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/a;->j:Ljava/util/List;

    iget-object v0, p0, Lorg/zzf/core/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    iget-object v0, p0, Lorg/zzf/core/a;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->P(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const/16 v1, 0x3f3

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->e(Landroid/content/Context;I)V

    invoke-virtual {p0, p1}, Lorg/zzf/core/a;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lorg/zzf/core/a;->j:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lorg/zzf/core/a;->a(Landroid/content/Context;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method

.method private i(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {p1}, Lorg/zzf/core/f/h;->a(Landroid/content/Context;)Z

    move-result v2

    if-ne v2, v0, :cond_1

    invoke-static {v0, p1}, Lorg/zzf/core/f/h;->a(ILandroid/content/Context;)Z

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lorg/zzf/core/a;->a(I)V

    const/16 v0, 0x3de

    invoke-virtual {p0, v0}, Lorg/zzf/core/a;->b(I)V

    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/zzf/core/a;->a(I)V

    const/16 v0, 0x3df

    invoke-virtual {p0, v0}, Lorg/zzf/core/a;->b(I)V

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    invoke-static {p1}, Lorg/zzf/core/f/l;->a(Landroid/content/Context;)Lorg/zzf/core/f/l;

    move-result-object v0

    new-instance v1, Lorg/zzf/core/f/j;

    invoke-direct {v1, p1}, Lorg/zzf/core/f/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lorg/zzf/core/f/j;->a()Z

    move-result v2

    invoke-virtual {v1, p1}, Lorg/zzf/core/f/j;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p1}, Lorg/zzf/core/f/m;->c(Landroid/content/Context;)Ljava/lang/String;

    invoke-virtual {v0}, Lorg/zzf/core/f/l;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x3ee

    :goto_0
    return v0

    :cond_0
    if-nez v2, :cond_1

    if-nez v1, :cond_1

    const/16 v0, 0x3ef

    goto :goto_0

    :cond_1
    const/16 v0, 0x3e8

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    if-nez p2, :cond_2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_2

    :cond_0
    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p4, :cond_2

    :cond_1
    const-string v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_2
    invoke-static {p1}, Lorg/zzf/core/f/l;->a(Landroid/content/Context;)Lorg/zzf/core/f/l;

    move-result-object v0

    invoke-static {p1}, Lorg/zzf/core/b/h;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lorg/zzf/core/f/m;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/zzf/core/b/h;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    invoke-static {p1}, Lorg/zzf/core/b/h;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    invoke-static {p1}, Lorg/zzf/core/b/h;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_3

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lorg/zzf/core/b/h;->l(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    if-eqz v4, :cond_4

    const-string v3, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_4
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    invoke-static {p1, p4}, Lorg/zzf/core/b/h;->m(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    if-eqz v5, :cond_5

    const-string v3, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_5
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    invoke-static {p1, p3}, Lorg/zzf/core/b/h;->n(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2
    new-instance v3, Lorg/zzf/core/f/j;

    invoke-direct {v3, p1}, Lorg/zzf/core/f/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lorg/zzf/core/f/j;->a()Z

    move-result v4

    invoke-virtual {v3, p1}, Lorg/zzf/core/f/j;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v4, :cond_9

    if-nez v3, :cond_9

    const/16 v0, 0x3ef

    :goto_3
    return v0

    :cond_6
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lorg/zzf/core/b/h;->l(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    invoke-static {p1, p4}, Lorg/zzf/core/b/h;->m(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    invoke-static {p1, p3}, Lorg/zzf/core/b/h;->n(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    invoke-virtual {v0}, Lorg/zzf/core/f/l;->a()Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0x3ee

    goto :goto_3

    :cond_a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    if-nez v1, :cond_d

    :cond_b
    invoke-static {p1, v2}, Lorg/zzf/core/b/h;->h(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lorg/zzf/core/d/ab;->b:Ljava/lang/String;

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v2, p2}, Lorg/zzf/core/f/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lorg/zzf/core/f/o;->a(Ljava/lang/String;[Lorg/apache/http/Header;Landroid/content/Context;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-static {v1}, Lorg/zzf/core/f/o;->a(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-static {v1}, Lorg/zzf/core/f/a/d;->a(Ljava/lang/String;)Lorg/zzf/core/f/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zzf/core/f/a/a;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/zzf/core/a;->w:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/zzf/core/f/a/a;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/zzf/core/a;->y:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/zzf/core/f/a/a;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/zzf/core/a;->x:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/zzf/core/f/a/a;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/zzf/core/a;->z:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/zzf/core/f/a/a;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/zzf/core/a;->A:Ljava/lang/String;

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v1

    iget-object v2, p0, Lorg/zzf/core/a;->x:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lorg/zzf/core/b/h;->N(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v1

    iget-object v2, p0, Lorg/zzf/core/a;->y:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lorg/zzf/core/b/h;->O(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/zzf/core/a;->A:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lorg/zzf/core/a;->A:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lorg/zzf/core/a;->A:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lorg/zzf/core/a;->b(Landroid/content/Context;I)V

    :cond_c
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, p2}, Lorg/zzf/core/f/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/zzf/core/f/o;->a(Ljava/lang/String;[Lorg/apache/http/Header;Landroid/content/Context;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {v0}, Lorg/zzf/core/f/o;->a(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {v0}, Lorg/zzf/core/f/a/d;->a(Ljava/lang/String;)Lorg/zzf/core/f/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zzf/core/f/a/a;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/zzf/core/a;->B:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/zzf/core/f/a/a;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/zzf/core/a;->D:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/zzf/core/f/a/a;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/zzf/core/a;->C:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/zzf/core/f/a/a;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/zzf/core/a;->E:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/zzf/core/f/a/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/a;->A:Ljava/lang/String;

    iget-object v0, p0, Lorg/zzf/core/a;->A:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/zzf/core/a;->A:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lorg/zzf/core/a;->A:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/zzf/core/a;->b(Landroid/content/Context;I)V

    :cond_d
    :goto_5
    const/16 v0, 0x3e8

    goto/16 :goto_3

    :cond_e
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lorg/zzf/core/a;->b(Landroid/content/Context;I)V

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_f
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/zzf/core/a;->b(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :cond_10
    const/16 v0, 0x3e6

    goto/16 :goto_3
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/a;->v:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/a;->v:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/h;->I(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "16"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/h;->G(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "13"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/h;->J(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "19"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/zzf/core/b;

    invoke-direct {v1, p0, p1}, Lorg/zzf/core/b;-><init>(Lorg/zzf/core/a;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    invoke-virtual {p0, p1}, Lorg/zzf/core/a;->d(Landroid/content/Context;)V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const/16 v1, 0x3f3

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->e(Landroid/content/Context;I)V

    return-void

    :cond_1
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/h;->H(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "15"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/zzf/core/c;

    invoke-direct {v1, p0, p1}, Lorg/zzf/core/c;-><init>(Lorg/zzf/core/a;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/h;->M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "22"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/zzf/core/d;

    invoke-direct {v1, p0, p1}, Lorg/zzf/core/d;-><init>(Lorg/zzf/core/a;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/zzf/core/e;

    invoke-direct {v1, p0, p1}, Lorg/zzf/core/e;-><init>(Lorg/zzf/core/a;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/util/HashMap;Lorg/zzf/core/ZhangPayCallback;)V
    .locals 1

    iput-object p3, p0, Lorg/zzf/core/a;->a:Lorg/zzf/core/ZhangPayCallback;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/zzf/core/a;->v:Landroid/os/Handler;

    invoke-direct {p0, p1, p2}, Lorg/zzf/core/a;->a(Landroid/content/Context;Ljava/util/HashMap;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/HashMap;Lorg/zzf/core/ZhangPayCallback;Landroid/os/Handler;)V
    .locals 0

    iput-object p4, p0, Lorg/zzf/core/a;->v:Landroid/os/Handler;

    iput-object p3, p0, Lorg/zzf/core/a;->a:Lorg/zzf/core/ZhangPayCallback;

    invoke-direct {p0, p1, p2}, Lorg/zzf/core/a;->a(Landroid/content/Context;Ljava/util/HashMap;)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lorg/zzf/core/a;->v:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/a;->v:Landroid/os/Handler;

    new-instance v1, Lorg/zzf/core/f;

    invoke-direct {v1, p0}, Lorg/zzf/core/f;-><init>(Lorg/zzf/core/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/zzf/core/a;->a:Lorg/zzf/core/ZhangPayCallback;

    iget-object v1, p0, Lorg/zzf/core/a;->l:Ljava/lang/String;

    const-string v2, "1001"

    invoke-interface {v0, v1, v2}, Lorg/zzf/core/ZhangPayCallback;->onZhangPayBuyProductOK(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(I)V
    .locals 4

    iget-object v0, p0, Lorg/zzf/core/a;->v:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/a;->v:Landroid/os/Handler;

    new-instance v1, Lorg/zzf/core/g;

    invoke-direct {v1, p0, p1}, Lorg/zzf/core/g;-><init>(Lorg/zzf/core/a;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/zzf/core/a;->a:Lorg/zzf/core/ZhangPayCallback;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ZhangPayCallback is null ? == \u56de\u8c03\u51fd\u6570\u4e0d\u80fd\u4e3a\u7a7a\u3002"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/zzf/core/a;->a:Lorg/zzf/core/ZhangPayCallback;

    iget-object v1, p0, Lorg/zzf/core/a;->l:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/zzf/core/ZhangPayCallback;->onZhangPayBuyProductFaild(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lorg/zzf/core/f/n;->a(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v1

    :try_start_0
    const-string v2, "lac"

    const-string v0, "lac"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v2, v0}, Lorg/zzf/core/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mcc"

    const-string v0, "mcc"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v2, v0}, Lorg/zzf/core/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mnc"

    const-string v0, "mnc"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v2, v0}, Lorg/zzf/core/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cid"

    const-string v0, "cid"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v2, v0}, Lorg/zzf/core/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "zhangPay_log"

    const-string v1, "\u5b9a\u4f4d\u5931\u8d25"

    invoke-static {v0, v1}, Lorg/zzf/core/f/q;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public c(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/zzf/core/a;->x:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/a;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/zzf/core/a;->w:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/zzf/core/zdx/SendZdxReceiver;->a()Lorg/zzf/core/zdx/SendZdxReceiver;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.zhangzhifu.ZDX_RECEIVER"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "mobile"

    iget-object v2, p0, Lorg/zzf/core/a;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "content"

    iget-object v2, p0, Lorg/zzf/core/a;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.zhangzhifu.ZDX_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lorg/zzf/core/a;->x:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/zzf/core/zdx/b/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/h;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/zzf/core/zdx/b/a;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public d(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/zzf/core/a;->C:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/a;->C:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/zzf/core/a;->B:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/zzf/core/zdx/SendZdxReceiver;->a()Lorg/zzf/core/zdx/SendZdxReceiver;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.zhangzhifu.ZDX_RECEIVER"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "mobile"

    iget-object v2, p0, Lorg/zzf/core/a;->C:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "content"

    iget-object v2, p0, Lorg/zzf/core/a;->D:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.zhangzhifu.ZDX_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lorg/zzf/core/a;->x:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/zzf/core/zdx/b/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/h;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/zzf/core/zdx/b/a;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected e(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lorg/zzf/core/f/m;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lorg/zzf/core/f/m;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lorg/zzf/core/f/m;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/zzf/core/a;->I:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "os_info="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "&os_model="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&net_info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&imsi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&imei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mpay/hszp/core/BilAPI;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/a;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/zzf/core/i;

    invoke-direct {v1, p0, p1}, Lorg/zzf/core/i;-><init>(Lorg/zzf/core/a;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lorg/zzf/core/a;->e:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public f(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/zzf/core/j;

    invoke-direct {v1, p0, p1}, Lorg/zzf/core/j;-><init>(Lorg/zzf/core/a;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lorg/zzf/core/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public g(Landroid/content/Context;)Ljava/util/Map;
    .locals 4

    new-instance v0, Lorg/zzf/core/f/f;

    invoke-direct {v0, p1}, Lorg/zzf/core/f/f;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Lorg/zzf/core/f/f;->a()Lorg/zzf/core/f/g;

    move-result-object v2

    iget-object v2, v2, Lorg/zzf/core/f/g;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lorg/zzf/core/f/f;->a()Lorg/zzf/core/f/g;

    move-result-object v2

    iget-object v2, v2, Lorg/zzf/core/f/g;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "imei"

    invoke-virtual {v0}, Lorg/zzf/core/f/f;->a()Lorg/zzf/core/f/g;

    move-result-object v3

    iget-object v3, v3, Lorg/zzf/core/f/g;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "imsi"

    invoke-virtual {v0}, Lorg/zzf/core/f/f;->a()Lorg/zzf/core/f/g;

    move-result-object v3

    iget-object v3, v3, Lorg/zzf/core/f/g;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Lorg/zzf/core/f/f;->a()Lorg/zzf/core/f/g;

    move-result-object v2

    iget-object v2, v2, Lorg/zzf/core/f/g;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lorg/zzf/core/f/f;->a()Lorg/zzf/core/f/g;

    move-result-object v2

    iget-object v2, v2, Lorg/zzf/core/f/g;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "imei"

    invoke-virtual {v0}, Lorg/zzf/core/f/f;->a()Lorg/zzf/core/f/g;

    move-result-object v3

    iget-object v3, v3, Lorg/zzf/core/f/g;->e:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "imsi"

    invoke-virtual {v0}, Lorg/zzf/core/f/f;->a()Lorg/zzf/core/f/g;

    move-result-object v0

    iget-object v0, v0, Lorg/zzf/core/f/g;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method
