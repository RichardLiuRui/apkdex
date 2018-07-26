.class public Lcom/boJUF/ac;
.super Landroid/app/Service;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Lcom/boJUF/mB/mB/VD/Kd;->LA()Lcom/boJUF/mB/mB/VD/Kd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/boJUF/mB/mB/VD/Kd;->LA(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-static {}, Lcom/boJUF/mB/mB/VD/Kd;->LA()Lcom/boJUF/mB/mB/VD/Kd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/boJUF/mB/mB/VD/Kd;->cp(Landroid/content/Context;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    invoke-static {}, Lcom/boJUF/mB/mB/VD/Kd;->LA()Lcom/boJUF/mB/mB/VD/Kd;

    move-result-object v0

    invoke-virtual {p0}, Lcom/boJUF/ac;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/boJUF/mB/mB/VD/Kd;->LA(Landroid/app/Application;Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method
