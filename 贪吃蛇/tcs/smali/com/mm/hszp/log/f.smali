.class public final Lcom/mm/hszp/log/f;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/os/Handler;

.field private static b:Landroid/content/Context;

.field private static c:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/mm/hszp/log/f;->a:Landroid/os/Handler;

    new-instance v0, Lcom/mm/hszp/log/g;

    invoke-direct {v0}, Lcom/mm/hszp/log/g;-><init>()V

    sput-object v0, Lcom/mm/hszp/log/f;->c:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/mm/hszp/log/f;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/mm/hszp/log/h;->a:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "MoblieAgent_config_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/mm/hszp/log/h;->a:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "MoblieAgent_event_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/mm/hszp/log/h;->a:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "MoblieAgent_state_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/mm/hszp/log/h;->a:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "MoblieAgent_upload_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/mm/hszp/log/h;->a:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "MoblieAgent_sys_config"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    move v0, v1

    :goto_0
    if-lt v0, v6, :cond_0

    sput-boolean v1, Lcom/mm/hszp/log/h;->c:Z

    return-void

    :cond_0
    aget-object v3, v2, v0

    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sput-object p0, Lcom/mm/hszp/log/f;->b:Landroid/content/Context;

    invoke-static {}, Lcom/mm/hszp/log/e;->a()Lcom/mm/hszp/log/e;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/mm/hszp/log/e;->r:I

    iput-object p1, v0, Lcom/mm/hszp/log/e;->i:Ljava/lang/String;

    const/4 v0, 0x2

    sput v0, Lcom/mm/hszp/log/c;->s:I

    invoke-static {}, Lcom/mm/hszp/log/c;->b()V

    invoke-static {}, Lcom/mm/hszp/log/c;->a()V

    invoke-static {p0}, Lcom/mm/hszp/log/c;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/mm/hszp/log/c;->b()V

    invoke-static {}, Lcom/mm/hszp/log/c;->a()V

    invoke-static {p0}, Lcom/mm/hszp/log/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/mm/hszp/log/e;->a()Lcom/mm/hszp/log/e;

    move-result-object v1

    iput-object p1, v1, Lcom/mm/hszp/log/e;->a:Ljava/lang/String;

    iput-object p2, v1, Lcom/mm/hszp/log/e;->b:Ljava/lang/String;

    iput p3, v1, Lcom/mm/hszp/log/e;->c:I

    invoke-virtual {p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mm/hszp/log/e;->d:Ljava/lang/String;

    iput-object p5, v1, Lcom/mm/hszp/log/e;->e:Ljava/lang/String;

    iput-object p6, v1, Lcom/mm/hszp/log/e;->f:Ljava/lang/String;

    iput-object p7, v1, Lcom/mm/hszp/log/e;->g:Ljava/lang/String;

    iput-object p8, v1, Lcom/mm/hszp/log/e;->h:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/mm/hszp/log/e;->i:Ljava/lang/String;

    iput-object p9, v1, Lcom/mm/hszp/log/e;->k:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v1, Lcom/mm/hszp/log/e;->r:I

    const-string v2, ""

    iput-object v2, v1, Lcom/mm/hszp/log/e;->l:Ljava/lang/String;

    move-object/from16 v0, p10

    iput-object v0, v1, Lcom/mm/hszp/log/e;->m:Ljava/lang/String;

    move-object/from16 v0, p11

    iput-object v0, v1, Lcom/mm/hszp/log/e;->n:Ljava/lang/String;

    move-object/from16 v0, p12

    iput-object v0, v1, Lcom/mm/hszp/log/e;->o:Ljava/lang/String;

    move-object/from16 v0, p13

    iput-object v0, v1, Lcom/mm/hszp/log/e;->p:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, v1, Lcom/mm/hszp/log/e;->q:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, v1, Lcom/mm/hszp/log/e;->r:I

    sput-object p0, Lcom/mm/hszp/log/f;->b:Landroid/content/Context;

    const/4 v2, 0x1

    sput v2, Lcom/mm/hszp/log/c;->s:I

    iget-object v2, v1, Lcom/mm/hszp/log/e;->g:Ljava/lang/String;

    iget-object v1, v1, Lcom/mm/hszp/log/e;->f:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/mm/hszp/log/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mm/hszp/log/c;->b()V

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x1a4

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x50

    invoke-static {}, Lcom/mm/hszp/paycode/b;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "n"

    invoke-static {p0, v3, v2}, Lcom/mm/hszp/paycode/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/mm/hszp/log/f;->a:Landroid/os/Handler;

    sget-object v3, Lcom/mm/hszp/log/f;->c:Ljava/lang/Runnable;

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/mm/hszp/log/e;->a()Lcom/mm/hszp/log/e;

    move-result-object v0

    iput-object p1, v0, Lcom/mm/hszp/log/e;->j:Ljava/lang/String;

    invoke-static {}, Lcom/mm/hszp/log/c;->a()V

    const/4 v0, 0x3

    sput v0, Lcom/mm/hszp/log/c;->s:I

    invoke-static {p0}, Lcom/mm/hszp/log/c;->a(Landroid/content/Context;)V

    const/4 v0, 0x5

    sput v0, Lcom/mm/hszp/log/c;->s:I

    invoke-static {p0}, Lcom/mm/hszp/log/c;->a(Landroid/content/Context;)V

    return-void
.end method
