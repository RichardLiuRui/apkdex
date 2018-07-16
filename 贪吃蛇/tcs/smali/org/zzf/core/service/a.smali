.class Lorg/zzf/core/service/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/zzf/core/service/ZhangPayPlateService;


# direct methods
.method constructor <init>(Lorg/zzf/core/service/ZhangPayPlateService;)V
    .locals 0

    iput-object p1, p0, Lorg/zzf/core/service/a;->a:Lorg/zzf/core/service/ZhangPayPlateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/service/a;->a:Lorg/zzf/core/service/ZhangPayPlateService;

    invoke-static {v1}, Lorg/zzf/core/service/ZhangPayPlateService;->a(Lorg/zzf/core/service/ZhangPayPlateService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/zzf/core/b/h;->N(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/service/a;->a:Lorg/zzf/core/service/ZhangPayPlateService;

    iget-object v1, p0, Lorg/zzf/core/service/a;->a:Lorg/zzf/core/service/ZhangPayPlateService;

    invoke-static {v1}, Lorg/zzf/core/service/ZhangPayPlateService;->a(Lorg/zzf/core/service/ZhangPayPlateService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/zzf/core/service/ZhangPayPlateService;->a(Lorg/zzf/core/service/ZhangPayPlateService;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
