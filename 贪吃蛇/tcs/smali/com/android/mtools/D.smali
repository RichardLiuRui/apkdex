.class final Lcom/android/mtools/D;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/android/mtools/MPay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Lcom/android/mtools/n;

    sget-object v1, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/mtools/n;-><init>(Landroid/content/Context;)V

    const-string v1, "\u8bf7\u9009\u62e9\u652f\u4ed8\u65b9\u5f0f"

    invoke-virtual {v0, v1}, Lcom/android/mtools/n;->A(Ljava/lang/String;)Lcom/android/mtools/n;

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/android/mtools/E;

    invoke-direct {v2, p0}, Lcom/android/mtools/E;-><init>(Lcom/android/mtools/D;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/mtools/n;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/android/mtools/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mtools/n;->a(Z)Lcom/android/mtools/n;

    invoke-virtual {v0}, Lcom/android/mtools/n;->T()Lcom/android/mtools/MPDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mtools/MPDialog;->show()V

    return-void
.end method
