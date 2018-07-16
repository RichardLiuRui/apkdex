.class final Lcom/android/mtools/K;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic aS:Lcom/android/mtools/MPay;

.field private final synthetic aT:Lcom/android/mtools/f;


# direct methods
.method constructor <init>(Lcom/android/mtools/MPay;Lcom/android/mtools/f;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mtools/K;->aS:Lcom/android/mtools/MPay;

    iput-object p2, p0, Lcom/android/mtools/K;->aT:Lcom/android/mtools/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x2

    const-string v1, "MPAY"

    const/16 v2, 0x835

    iget-object v3, p0, Lcom/android/mtools/K;->aT:Lcom/android/mtools/f;

    invoke-virtual {v3}, Lcom/android/mtools/f;->w()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mtools/K;->aT:Lcom/android/mtools/f;

    invoke-virtual {v4}, Lcom/android/mtools/f;->x()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mtools/K;->aT:Lcom/android/mtools/f;

    invoke-virtual {v5}, Lcom/android/mtools/f;->k()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/mtools/P;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mtools/K;->aS:Lcom/android/mtools/MPay;

    iget-object v2, v2, Lcom/android/mtools/MPay;->handler:Landroid/os/Handler;

    invoke-static {v0, v6, v6, v1, v2}, Lcom/android/mtools/P;->a(IIILjava/lang/Object;Landroid/os/Handler;)V

    invoke-static {p1}, Lcom/android/mtools/MPDialog;->a(Landroid/content/DialogInterface;)V

    return-void
.end method
