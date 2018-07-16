.class final Lcom/android/mtools/H;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/mtools/MPay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    sget-object v0, Lcom/android/mtools/MPay;->device:Lcom/android/mtools/m;

    sget-object v1, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/mtools/P;->a(Lcom/android/mtools/m;Landroid/content/Context;Z)V

    return-void
.end method
