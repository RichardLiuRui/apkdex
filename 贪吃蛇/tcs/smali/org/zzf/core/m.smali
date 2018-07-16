.class Lorg/zzf/core/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lorg/zzf/core/ZhangPaySdk;


# direct methods
.method constructor <init>(Lorg/zzf/core/ZhangPaySdk;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/zzf/core/m;->e:Lorg/zzf/core/ZhangPaySdk;

    iput-object p2, p0, Lorg/zzf/core/m;->a:Landroid/content/Context;

    iput-object p3, p0, Lorg/zzf/core/m;->b:Ljava/lang/String;

    iput-object p4, p0, Lorg/zzf/core/m;->c:Ljava/lang/String;

    iput-object p5, p0, Lorg/zzf/core/m;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lorg/zzf/core/m;->e:Lorg/zzf/core/ZhangPaySdk;

    iget-object v1, p0, Lorg/zzf/core/m;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lorg/zzf/core/ZhangPaySdk;->initLocation(Landroid/content/Context;)V

    invoke-static {}, Lorg/zzf/core/a;->a()Lorg/zzf/core/a;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/m;->a:Landroid/content/Context;

    iget-object v2, p0, Lorg/zzf/core/m;->b:Ljava/lang/String;

    iget-object v3, p0, Lorg/zzf/core/m;->c:Ljava/lang/String;

    iget-object v4, p0, Lorg/zzf/core/m;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/zzf/core/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/zzf/core/m;->e:Lorg/zzf/core/ZhangPaySdk;

    # invokes: Lorg/zzf/core/ZhangPaySdk;->addRequesNum()V
    invoke-static {v0}, Lorg/zzf/core/ZhangPaySdk;->access$000(Lorg/zzf/core/ZhangPaySdk;)V

    :try_start_0
    invoke-static {}, Lorg/zzf/core/a;->a()Lorg/zzf/core/a;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/m;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lorg/zzf/core/a;->e(Landroid/content/Context;)Ljava/lang/String;

    invoke-static {}, Lorg/zzf/core/a;->a()Lorg/zzf/core/a;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/m;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lorg/zzf/core/a;->f(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "mm\u521d\u59cb\u5316\u5931\u8d25"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
