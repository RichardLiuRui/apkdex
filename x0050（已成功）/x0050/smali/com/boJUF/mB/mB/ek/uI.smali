.class public final Lcom/boJUF/mB/mB/ek/uI;
.super Lcom/boJUF/mB/mB/JO/XQ;


# direct methods
.method public static LA(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 3

    const/16 v2, 0x7b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, p1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p0, Lcom/boJUF/mB/mB/ek/ac;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/boJUF/mB/mB/ek/oC;

    invoke-direct {v1, p1, p0, v2}, Lcom/boJUF/mB/mB/ek/oC;-><init>([Ljava/lang/String;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
