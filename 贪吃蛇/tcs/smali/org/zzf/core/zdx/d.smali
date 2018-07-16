.class Lorg/zzf/core/zdx/d;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lorg/zzf/core/zdx/b;

.field private b:Lorg/zzf/core/d/x;


# direct methods
.method public constructor <init>(Lorg/zzf/core/zdx/b;Lorg/zzf/core/d/x;)V
    .locals 0

    iput-object p1, p0, Lorg/zzf/core/zdx/d;->a:Lorg/zzf/core/zdx/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lorg/zzf/core/zdx/d;->b:Lorg/zzf/core/d/x;

    return-void
.end method

.method private a(Lorg/zzf/core/d/x;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    new-instance v1, Lorg/zzf/core/zdx/c/a;

    invoke-direct {v1}, Lorg/zzf/core/zdx/c/a;-><init>()V

    new-instance v2, Lorg/zzf/core/zdx/a;

    invoke-direct {v2}, Lorg/zzf/core/zdx/a;-><init>()V

    invoke-virtual {p1}, Lorg/zzf/core/d/x;->g()I

    move-result v3

    if-ne v3, v0, :cond_1

    invoke-virtual {p1}, Lorg/zzf/core/d/x;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/zzf/core/zdx/c/a;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/zzf/core/zdx/c/a;->a(Z)V

    invoke-virtual {p1}, Lorg/zzf/core/d/x;->h()I

    move-result v3

    if-ne v3, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Lorg/zzf/core/zdx/c/a;->b(Z)V

    invoke-virtual {p1}, Lorg/zzf/core/d/x;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/zzf/core/zdx/c/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/zzf/core/zdx/d;->a:Lorg/zzf/core/zdx/b;

    invoke-static {v0}, Lorg/zzf/core/zdx/b;->a(Lorg/zzf/core/zdx/b;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lorg/zzf/core/d/x;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/zzf/core/b/h;->A(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/zzf/core/d/x;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/zzf/core/zdx/c/a;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/zzf/core/d/x;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/zzf/core/zdx/c/a;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/zzf/core/d/x;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/zzf/core/zdx/d;->a:Lorg/zzf/core/zdx/b;

    invoke-static {v0}, Lorg/zzf/core/zdx/b;->a(Lorg/zzf/core/zdx/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/zzf/core/b/h;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/zzf/core/zdx/d;->a:Lorg/zzf/core/zdx/b;

    invoke-static {v0}, Lorg/zzf/core/zdx/b;->a(Lorg/zzf/core/zdx/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/zzf/core/b/h;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/zdx/d;->a:Lorg/zzf/core/zdx/b;

    iget-object v3, p0, Lorg/zzf/core/zdx/d;->a:Lorg/zzf/core/zdx/b;

    invoke-static {v3}, Lorg/zzf/core/zdx/b;->a(Lorg/zzf/core/zdx/b;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/zzf/core/zdx/b;->a(Lorg/zzf/core/zdx/b;Landroid/content/Context;)V

    iget-object v1, p0, Lorg/zzf/core/zdx/d;->a:Lorg/zzf/core/zdx/b;

    invoke-static {v1}, Lorg/zzf/core/zdx/b;->a(Lorg/zzf/core/zdx/b;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lorg/zzf/core/zdx/d;->a:Lorg/zzf/core/zdx/b;

    invoke-static {v3}, Lorg/zzf/core/zdx/b;->b(Lorg/zzf/core/zdx/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3, v4}, Lorg/zzf/core/zdx/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lorg/zzf/core/zdx/d;->a:Lorg/zzf/core/zdx/b;

    iget-object v1, p0, Lorg/zzf/core/zdx/d;->a:Lorg/zzf/core/zdx/b;

    invoke-static {v1}, Lorg/zzf/core/zdx/b;->a(Lorg/zzf/core/zdx/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/zzf/core/zdx/b;->a(Lorg/zzf/core/zdx/b;Landroid/content/Context;)V

    iget-object v0, p0, Lorg/zzf/core/zdx/d;->a:Lorg/zzf/core/zdx/b;

    invoke-static {v0}, Lorg/zzf/core/zdx/b;->a(Lorg/zzf/core/zdx/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/zzf/core/b/h;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/zzf/core/zdx/d;->a:Lorg/zzf/core/zdx/b;

    invoke-static {v0}, Lorg/zzf/core/zdx/b;->a(Lorg/zzf/core/zdx/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/zdx/d;->a:Lorg/zzf/core/zdx/b;

    invoke-static {v1}, Lorg/zzf/core/zdx/b;->a(Lorg/zzf/core/zdx/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/zzf/core/b/h;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/zzf/core/zdx/d;->a:Lorg/zzf/core/zdx/b;

    invoke-static {v3}, Lorg/zzf/core/zdx/b;->b(Lorg/zzf/core/zdx/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3, v4}, Lorg/zzf/core/zdx/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/zzf/core/zdx/d;->a:Lorg/zzf/core/zdx/b;

    invoke-static {v0}, Lorg/zzf/core/zdx/b;->a(Lorg/zzf/core/zdx/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/zzf/core/b/h;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/zzf/core/zdx/d;->a:Lorg/zzf/core/zdx/b;

    invoke-static {v0}, Lorg/zzf/core/zdx/b;->a(Lorg/zzf/core/zdx/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/zzf/core/b/h;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/zdx/d;->a:Lorg/zzf/core/zdx/b;

    invoke-static {v1}, Lorg/zzf/core/zdx/b;->a(Lorg/zzf/core/zdx/b;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lorg/zzf/core/d/x;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3, v4}, Lorg/zzf/core/zdx/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)Z

    :cond_4
    iget-object v0, p0, Lorg/zzf/core/zdx/d;->a:Lorg/zzf/core/zdx/b;

    invoke-static {v0}, Lorg/zzf/core/zdx/b;->a(Lorg/zzf/core/zdx/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/zzf/core/b/h;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/zzf/core/zdx/d;->a:Lorg/zzf/core/zdx/b;

    invoke-static {v0}, Lorg/zzf/core/zdx/b;->a(Lorg/zzf/core/zdx/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/zzf/core/b/h;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/zdx/d;->a:Lorg/zzf/core/zdx/b;

    invoke-static {v1}, Lorg/zzf/core/zdx/b;->a(Lorg/zzf/core/zdx/b;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lorg/zzf/core/d/x;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3, v4}, Lorg/zzf/core/zdx/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)Z

    goto/16 :goto_0
.end method

.method private b(Lorg/zzf/core/d/x;)V
    .locals 10

    const/4 v9, 0x1

    sput-boolean v9, Lorg/zzf/core/d/ab;->h:Z

    new-instance v3, Lorg/zzf/core/zdx/a;

    invoke-direct {v3}, Lorg/zzf/core/zdx/a;-><init>()V

    iget-object v0, p0, Lorg/zzf/core/zdx/d;->b:Lorg/zzf/core/d/x;

    invoke-virtual {v0}, Lorg/zzf/core/d/x;->m()I

    move-result v1

    iget-object v0, p0, Lorg/zzf/core/zdx/d;->b:Lorg/zzf/core/d/x;

    invoke-virtual {v0}, Lorg/zzf/core/d/x;->f()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lorg/zzf/core/zdx/d;->b:Lorg/zzf/core/d/x;

    invoke-virtual {v0}, Lorg/zzf/core/d/x;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/zzf/core/d/x;->p()I

    move-result v2

    if-ne v2, v9, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/zzf/core/zdx/d;->a:Lorg/zzf/core/zdx/b;

    invoke-static {v2}, Lorg/zzf/core/zdx/b;->a(Lorg/zzf/core/zdx/b;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/zzf/core/f/m;->l(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/zzf/core/zdx/d;->a:Lorg/zzf/core/zdx/b;

    invoke-static {v2}, Lorg/zzf/core/zdx/b;->a(Lorg/zzf/core/zdx/b;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/zzf/core/f/m;->m(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Lorg/zzf/core/zdx/d;->b:Lorg/zzf/core/d/x;

    invoke-virtual {v2}, Lorg/zzf/core/d/x;->n()I

    move-result v5

    move v2, v1

    :goto_0
    if-lez v2, :cond_3

    iget-object v6, p0, Lorg/zzf/core/zdx/d;->a:Lorg/zzf/core/zdx/b;

    invoke-static {v6}, Lorg/zzf/core/zdx/b;->a(Lorg/zzf/core/zdx/b;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v9, v6}, Lorg/zzf/core/f/h;->a(ILandroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/zzf/core/zdx/d;->a:Lorg/zzf/core/zdx/b;

    invoke-static {v6}, Lorg/zzf/core/zdx/b;->a(Lorg/zzf/core/zdx/b;)Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v4, v0, v7}, Lorg/zzf/core/zdx/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Lorg/zzf/core/d/x;->d(I)V

    :cond_1
    add-int/lit8 v2, v2, -0x1

    mul-int/lit16 v6, v5, 0x3e8

    int-to-long v6, v6

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    iget-object v6, p0, Lorg/zzf/core/zdx/d;->b:Lorg/zzf/core/d/x;

    invoke-direct {p0, v6}, Lorg/zzf/core/zdx/d;->a(Lorg/zzf/core/d/x;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-nez v1, :cond_2

    invoke-static {}, Lorg/zzf/core/b/j;->a()Lorg/zzf/core/b/j;

    move-result-object v6

    iget-object v7, p0, Lorg/zzf/core/zdx/d;->a:Lorg/zzf/core/zdx/b;

    invoke-static {v7}, Lorg/zzf/core/zdx/b;->a(Lorg/zzf/core/zdx/b;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p1}, Lorg/zzf/core/d/x;->d()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/zzf/core/b/j;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/zzf/core/b/j;->a()Lorg/zzf/core/b/j;

    move-result-object v6

    iget-object v7, p0, Lorg/zzf/core/zdx/d;->a:Lorg/zzf/core/zdx/b;

    invoke-static {v7}, Lorg/zzf/core/zdx/b;->a(Lorg/zzf/core/zdx/b;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, p1}, Lorg/zzf/core/b/j;->a(Landroid/content/Context;Lorg/zzf/core/d/x;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    sput-boolean v0, Lorg/zzf/core/d/ab;->h:Z

    iget-object v0, p0, Lorg/zzf/core/zdx/d;->a:Lorg/zzf/core/zdx/b;

    invoke-static {v0}, Lorg/zzf/core/zdx/b;->a(Lorg/zzf/core/zdx/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/zzf/core/f/i;->a(Landroid/content/Context;)V

    return-void

    :catch_0
    move-exception v6

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/zdx/d;->b:Lorg/zzf/core/d/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/zdx/d;->b:Lorg/zzf/core/d/x;

    invoke-direct {p0, v0}, Lorg/zzf/core/zdx/d;->b(Lorg/zzf/core/d/x;)V

    :cond_0
    return-void
.end method
