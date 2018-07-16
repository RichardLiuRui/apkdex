.class final Lcom/android/mtools/G;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aS:Lcom/android/mtools/MPay;


# direct methods
.method constructor <init>(Lcom/android/mtools/MPay;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mtools/G;->aS:Lcom/android/mtools/MPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/mtools/G;->aS:Lcom/android/mtools/MPay;

    sget-object v1, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/android/mtools/MPay;->a(Lcom/android/mtools/MPay;Landroid/app/Activity;)V

    return-void
.end method
