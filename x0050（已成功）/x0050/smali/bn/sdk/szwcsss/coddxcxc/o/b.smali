.class public Lbn/sdk/szwcsss/coddxcxc/o/b;
.super Ljava/lang/Object;


# static fields
.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WYZFPay"

    sput-object v0, Lbn/sdk/szwcsss/coddxcxc/o/b;->b:Ljava/lang/String;

    return-void
.end method

.method public static b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static b(Landroid/content/Context;ILbn/sdk/szwcsss/coddxcxc/v/cx;Ljava/lang/String;Landroid/os/Handler;Ljava/util/HashMap;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static b(Landroid/content/Context;Landroid/os/Handler;Lbn/sdk/szwcsss/coddxcxc/v/cx;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lbn/sdk/szwcsss/coddxcxc/o/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "init 111"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
