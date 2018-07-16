.class Lorg/zzf/core/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lorg/zzf/core/a;


# direct methods
.method constructor <init>(Lorg/zzf/core/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/zzf/core/c;->b:Lorg/zzf/core/a;

    iput-object p2, p0, Lorg/zzf/core/c;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/16 v5, 0x3ed

    const/16 v4, 0x3ea

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x3d

    if-ge v0, v1, :cond_0

    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v1

    iget-object v2, p0, Lorg/zzf/core/c;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lorg/zzf/core/b/h;->k(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Lorg/zzf/core/a;->c(I)I

    invoke-static {}, Lorg/zzf/core/a;->c()I

    move-result v1

    const/16 v2, 0x3e9

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/zzf/core/c;->b:Lorg/zzf/core/a;

    invoke-virtual {v1}, Lorg/zzf/core/a;->b()V

    iget-object v1, p0, Lorg/zzf/core/c;->b:Lorg/zzf/core/a;

    iget-object v2, p0, Lorg/zzf/core/c;->a:Landroid/content/Context;

    const/16 v3, 0x3e9

    invoke-static {v1, v2, v3}, Lorg/zzf/core/a;->a(Lorg/zzf/core/a;Landroid/content/Context;I)V

    iget-object v1, p0, Lorg/zzf/core/c;->b:Lorg/zzf/core/a;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/zzf/core/a;->a(I)V

    iget-object v1, p0, Lorg/zzf/core/c;->b:Lorg/zzf/core/a;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/zzf/core/a;->a(Lorg/zzf/core/a;Z)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    iget-object v1, p0, Lorg/zzf/core/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lorg/zzf/core/b/h;->D(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lorg/zzf/core/c;->b:Lorg/zzf/core/a;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/zzf/core/a;->a(I)V

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Lorg/zzf/core/a;->c()I

    move-result v1

    const/16 v2, 0x3f2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lorg/zzf/core/c;->b:Lorg/zzf/core/a;

    const/16 v2, 0x3f2

    invoke-virtual {v1, v2}, Lorg/zzf/core/a;->b(I)V

    iget-object v1, p0, Lorg/zzf/core/c;->b:Lorg/zzf/core/a;

    iget-object v2, p0, Lorg/zzf/core/c;->a:Landroid/content/Context;

    const/16 v3, 0x3f2

    invoke-static {v1, v2, v3}, Lorg/zzf/core/a;->a(Lorg/zzf/core/a;Landroid/content/Context;I)V

    iget-object v1, p0, Lorg/zzf/core/c;->b:Lorg/zzf/core/a;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/zzf/core/a;->a(I)V

    iget-object v1, p0, Lorg/zzf/core/c;->b:Lorg/zzf/core/a;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/zzf/core/a;->a(Lorg/zzf/core/a;Z)Z

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_4
    invoke-static {}, Lorg/zzf/core/a;->c()I

    move-result v1

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Lorg/zzf/core/c;->b:Lorg/zzf/core/a;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Lorg/zzf/core/a;->b(I)V

    iget-object v1, p0, Lorg/zzf/core/c;->b:Lorg/zzf/core/a;

    iget-object v2, p0, Lorg/zzf/core/c;->a:Landroid/content/Context;

    const/16 v3, 0x3ea

    invoke-static {v1, v2, v3}, Lorg/zzf/core/a;->a(Lorg/zzf/core/a;Landroid/content/Context;I)V

    iget-object v1, p0, Lorg/zzf/core/c;->b:Lorg/zzf/core/a;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/zzf/core/a;->a(I)V

    iget-object v1, p0, Lorg/zzf/core/c;->b:Lorg/zzf/core/a;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/zzf/core/a;->a(Lorg/zzf/core/a;Z)Z

    goto :goto_1

    :cond_5
    invoke-static {}, Lorg/zzf/core/a;->c()I

    move-result v1

    if-ne v1, v5, :cond_6

    iget-object v1, p0, Lorg/zzf/core/c;->b:Lorg/zzf/core/a;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Lorg/zzf/core/a;->b(I)V

    iget-object v1, p0, Lorg/zzf/core/c;->b:Lorg/zzf/core/a;

    iget-object v2, p0, Lorg/zzf/core/c;->a:Landroid/content/Context;

    const/16 v3, 0x3ed

    invoke-static {v1, v2, v3}, Lorg/zzf/core/a;->a(Lorg/zzf/core/a;Landroid/content/Context;I)V

    iget-object v1, p0, Lorg/zzf/core/c;->b:Lorg/zzf/core/a;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/zzf/core/a;->a(I)V

    iget-object v1, p0, Lorg/zzf/core/c;->b:Lorg/zzf/core/a;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/zzf/core/a;->a(Lorg/zzf/core/a;Z)Z

    goto/16 :goto_1

    :cond_6
    invoke-static {}, Lorg/zzf/core/a;->c()I

    move-result v1

    const/16 v2, 0x3f9

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lorg/zzf/core/c;->b:Lorg/zzf/core/a;

    const/16 v2, 0x3f3

    invoke-virtual {v1, v2}, Lorg/zzf/core/a;->b(I)V

    iget-object v1, p0, Lorg/zzf/core/c;->b:Lorg/zzf/core/a;

    iget-object v2, p0, Lorg/zzf/core/c;->a:Landroid/content/Context;

    const/16 v3, 0x3f9

    invoke-static {v1, v2, v3}, Lorg/zzf/core/a;->a(Lorg/zzf/core/a;Landroid/content/Context;I)V

    iget-object v1, p0, Lorg/zzf/core/c;->b:Lorg/zzf/core/a;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/zzf/core/a;->a(I)V

    iget-object v1, p0, Lorg/zzf/core/c;->b:Lorg/zzf/core/a;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/zzf/core/a;->a(Lorg/zzf/core/a;Z)Z

    goto/16 :goto_1

    :cond_7
    invoke-static {}, Lorg/zzf/core/a;->c()I

    move-result v1

    const/16 v2, 0x3f6

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lorg/zzf/core/c;->b:Lorg/zzf/core/a;

    const/16 v2, 0x3f3

    invoke-virtual {v1, v2}, Lorg/zzf/core/a;->b(I)V

    iget-object v1, p0, Lorg/zzf/core/c;->b:Lorg/zzf/core/a;

    iget-object v2, p0, Lorg/zzf/core/c;->a:Landroid/content/Context;

    const/16 v3, 0x3f6

    invoke-static {v1, v2, v3}, Lorg/zzf/core/a;->a(Lorg/zzf/core/a;Landroid/content/Context;I)V

    iget-object v1, p0, Lorg/zzf/core/c;->b:Lorg/zzf/core/a;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/zzf/core/a;->a(I)V

    iget-object v1, p0, Lorg/zzf/core/c;->b:Lorg/zzf/core/a;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/zzf/core/a;->a(Lorg/zzf/core/a;Z)Z

    goto/16 :goto_1

    :cond_8
    invoke-static {}, Lorg/zzf/core/a;->c()I

    move-result v1

    const/16 v2, 0x3f7

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lorg/zzf/core/c;->b:Lorg/zzf/core/a;

    const/16 v2, 0x3f3

    invoke-virtual {v1, v2}, Lorg/zzf/core/a;->b(I)V

    iget-object v1, p0, Lorg/zzf/core/c;->b:Lorg/zzf/core/a;

    iget-object v2, p0, Lorg/zzf/core/c;->a:Landroid/content/Context;

    const/16 v3, 0x3f7

    invoke-static {v1, v2, v3}, Lorg/zzf/core/a;->a(Lorg/zzf/core/a;Landroid/content/Context;I)V

    iget-object v1, p0, Lorg/zzf/core/c;->b:Lorg/zzf/core/a;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/zzf/core/a;->a(I)V

    iget-object v1, p0, Lorg/zzf/core/c;->b:Lorg/zzf/core/a;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/zzf/core/a;->a(Lorg/zzf/core/a;Z)Z

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Lorg/zzf/core/a;->c()I

    move-result v1

    const/16 v2, 0x3f8

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lorg/zzf/core/c;->b:Lorg/zzf/core/a;

    const/16 v2, 0x3f3

    invoke-virtual {v1, v2}, Lorg/zzf/core/a;->b(I)V

    iget-object v1, p0, Lorg/zzf/core/c;->b:Lorg/zzf/core/a;

    iget-object v2, p0, Lorg/zzf/core/c;->a:Landroid/content/Context;

    const/16 v3, 0x3f8

    invoke-static {v1, v2, v3}, Lorg/zzf/core/a;->a(Lorg/zzf/core/a;Landroid/content/Context;I)V

    iget-object v1, p0, Lorg/zzf/core/c;->b:Lorg/zzf/core/a;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/zzf/core/a;->a(I)V

    iget-object v1, p0, Lorg/zzf/core/c;->b:Lorg/zzf/core/a;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/zzf/core/a;->a(Lorg/zzf/core/a;Z)Z

    goto/16 :goto_1

    :cond_a
    const/16 v1, 0x3c

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lorg/zzf/core/c;->b:Lorg/zzf/core/a;

    const/16 v2, 0x3f3

    invoke-virtual {v1, v2}, Lorg/zzf/core/a;->b(I)V

    iget-object v1, p0, Lorg/zzf/core/c;->b:Lorg/zzf/core/a;

    iget-object v2, p0, Lorg/zzf/core/c;->a:Landroid/content/Context;

    const/16 v3, 0x3f3

    invoke-static {v1, v2, v3}, Lorg/zzf/core/a;->a(Lorg/zzf/core/a;Landroid/content/Context;I)V

    iget-object v1, p0, Lorg/zzf/core/c;->b:Lorg/zzf/core/a;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/zzf/core/a;->a(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1
.end method
