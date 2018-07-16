.class public Lorg/zzf/core/c/n;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:Z

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Lorg/zzf/core/d/p;

.field private f:Lorg/zzf/core/f/a/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lorg/zzf/core/c/n;->a:Z

    iput-boolean v0, p0, Lorg/zzf/core/c/n;->b:Z

    iput-object p1, p0, Lorg/zzf/core/c/n;->c:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/h;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/h;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/zzf/core/b/h;->s(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/h;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/h;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eq v0, p2, :cond_1

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/zzf/core/b/h;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->s(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Lorg/zzf/core/d/q;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/zzf/core/d/q;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/zzf/core/d/q;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/zzf/core/c/n;->b(Lorg/zzf/core/d/q;)V

    invoke-static {}, Lorg/zzf/core/b/e;->a()Lorg/zzf/core/b/e;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/c/n;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lorg/zzf/core/b/e;->a(Landroid/content/Context;Lorg/zzf/core/d/q;)V

    goto :goto_0
.end method

.method private b(Lorg/zzf/core/d/q;)V
    .locals 12

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/zzf/core/d/q;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    invoke-virtual {p1}, Lorg/zzf/core/d/q;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zzf/core/d/p;

    iput-object v0, p0, Lorg/zzf/core/c/n;->e:Lorg/zzf/core/d/p;

    iget-object v0, p0, Lorg/zzf/core/c/n;->e:Lorg/zzf/core/d/p;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/zzf/core/c/n;->e:Lorg/zzf/core/d/p;

    invoke-virtual {v0}, Lorg/zzf/core/d/p;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/c/n;->d:Ljava/lang/String;

    iget-object v0, p0, Lorg/zzf/core/c/n;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/zzf/core/c/n;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lorg/zzf/core/c/n;->d:Ljava/lang/String;

    iget-object v3, p0, Lorg/zzf/core/c/n;->c:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lorg/zzf/core/f/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    iget-object v5, p0, Lorg/zzf/core/c/n;->c:Landroid/content/Context;

    invoke-static {v0, v3, v5}, Lorg/zzf/core/f/o;->a(Ljava/lang/String;[Lorg/apache/http/Header;Landroid/content/Context;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v3, p0, Lorg/zzf/core/c/n;->c:Landroid/content/Context;

    invoke-static {v0, v3}, Lorg/zzf/core/f/o;->a(Lorg/apache/http/HttpResponse;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lorg/zzf/core/f/a/c;->a(Ljava/lang/String;)Lorg/zzf/core/f/a/h;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/c/n;->f:Lorg/zzf/core/f/a/h;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/zzf/core/c/n;->f:Lorg/zzf/core/f/a/h;

    invoke-virtual {v0}, Lorg/zzf/core/f/a/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lorg/zzf/core/c/n;->f:Lorg/zzf/core/f/a/h;

    invoke-virtual {v0}, Lorg/zzf/core/f/a/h;->b()Ljava/util/List;

    move-result-object v5

    move v3, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zzf/core/f/a/f;

    invoke-virtual {v0}, Lorg/zzf/core/f/a/f;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zzf/core/f/a/f;

    invoke-virtual {v0}, Lorg/zzf/core/f/a/f;->b()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zzf/core/f/a/f;

    invoke-virtual {v0}, Lorg/zzf/core/f/a/f;->c()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zzf/core/f/a/f;

    invoke-virtual {v0}, Lorg/zzf/core/f/a/f;->d()Ljava/lang/String;

    move-result-object v0

    const-string v9, "1"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    new-instance v9, Lorg/zzf/core/zdx/a;

    invoke-direct {v9}, Lorg/zzf/core/zdx/a;-><init>()V

    iget-object v10, p0, Lorg/zzf/core/c/n;->c:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v6, v7, v11}, Lorg/zzf/core/zdx/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)Z

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    :cond_2
    const-string v9, "2"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/zzf/core/zdx/a;

    invoke-direct {v0}, Lorg/zzf/core/zdx/a;-><init>()V

    invoke-virtual {p0, v7}, Lorg/zzf/core/c/n;->a(Ljava/lang/String;)[B

    move-result-object v7

    iget-object v9, p0, Lorg/zzf/core/c/n;->c:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v6, v10, v7}, Lorg/zzf/core/zdx/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)Z

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v7, v0

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    :cond_3
    iget-object v0, p0, Lorg/zzf/core/c/n;->c:Landroid/content/Context;

    invoke-direct {p0, v0, v6}, Lorg/zzf/core/c/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/zzf/core/c/n;->c:Landroid/content/Context;

    invoke-static {v0, v6}, Lorg/zzf/core/zdx/b/a;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zzf/core/d/q;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/zzf/core/c/n;->c:Landroid/content/Context;

    invoke-static {v2, v3}, Lorg/zzf/core/f/h;->a(ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lorg/zzf/core/c/n;->a(Lorg/zzf/core/d/q;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/c/n;->c:Landroid/content/Context;

    const/16 v2, 0x3ed

    invoke-virtual {v0, v1, v2}, Lorg/zzf/core/b/h;->e(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)[B
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
