.class public Lorg/zzf/core/zdx/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;

.field private c:Lorg/zzf/core/zdx/c;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/zzf/core/zdx/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lorg/zzf/core/zdx/b;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lorg/zzf/core/zdx/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/zdx/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x3c

    if-ge v0, v1, :cond_3

    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/zzf/core/b/h;->K(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/zzf/core/b/h;->L(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/zzf/core/zdx/b/a;->a()Lorg/zzf/core/zdx/b/a;

    invoke-static {p1}, Lorg/zzf/core/zdx/b/a;->c(Landroid/content/Context;)Ljava/lang/String;

    :cond_0
    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/zzf/core/b/h;->K(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/zzf/core/b/h;->L(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lorg/zzf/core/zdx/b/a;->a()Lorg/zzf/core/zdx/b/a;

    invoke-static {p1}, Lorg/zzf/core/zdx/b/a;->c(Landroid/content/Context;)Ljava/lang/String;

    :cond_1
    const/16 v1, 0x32

    if-ne v0, v1, :cond_4

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/zzf/core/b/h;->K(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/zzf/core/b/h;->L(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lorg/zzf/core/zdx/b/a;->a()Lorg/zzf/core/zdx/b/a;

    invoke-static {p1}, Lorg/zzf/core/zdx/b/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const/16 v1, 0x3f6

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->e(Landroid/content/Context;I)V

    invoke-static {}, Lorg/zzf/core/a;->a()Lorg/zzf/core/a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/zzf/core/a;->a(I)V

    :cond_3
    :goto_1
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/zzf/core/b/h;->C(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->r(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_4
    invoke-direct {p0, p1}, Lorg/zzf/core/zdx/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-direct {p0, p1}, Lorg/zzf/core/zdx/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/zdx/b;->d:Ljava/lang/String;

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    iget-object v0, p0, Lorg/zzf/core/zdx/b;->d:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/zzf/core/b/h;->C(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/h;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/zdx/b;->e:Ljava/lang/String;

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->e(Landroid/content/Context;I)V

    invoke-static {}, Lorg/zzf/core/a;->a()Lorg/zzf/core/a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/zzf/core/a;->a(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lorg/zzf/core/a;->a()Lorg/zzf/core/a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/zzf/core/a;->a(I)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method static synthetic a(Lorg/zzf/core/zdx/b;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/zzf/core/zdx/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    invoke-static {p1}, Lorg/zzf/core/b/h;->E(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    invoke-static {p1}, Lorg/zzf/core/b/h;->E(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lorg/zzf/core/zdx/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/zdx/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/zdx/b;->c:Lorg/zzf/core/zdx/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/zdx/b;->c:Lorg/zzf/core/zdx/c;

    invoke-interface {v0}, Lorg/zzf/core/zdx/c;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lorg/zzf/core/zdx/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lorg/zzf/core/f/l;->a(Landroid/content/Context;)Lorg/zzf/core/f/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zzf/core/f/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/zzf/core/zdx/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    new-instance v2, Lorg/zzf/core/zdx/d;

    iget-object v0, p0, Lorg/zzf/core/zdx/b;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zzf/core/d/x;

    invoke-direct {v2, p0, v0}, Lorg/zzf/core/zdx/d;-><init>(Lorg/zzf/core/zdx/b;Lorg/zzf/core/d/x;)V

    invoke-virtual {v2}, Lorg/zzf/core/zdx/d;->start()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/zzf/core/zdx/b;->b()V

    :cond_1
    return-void
.end method
