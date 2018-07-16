.class Lorg/zzf/core/service/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lorg/zzf/core/service/ZhangPayPlateService;


# direct methods
.method constructor <init>(Lorg/zzf/core/service/ZhangPayPlateService;)V
    .locals 0

    iput-object p1, p0, Lorg/zzf/core/service/b;->a:Lorg/zzf/core/service/ZhangPayPlateService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
