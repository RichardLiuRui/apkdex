.class final Lcom/android/mtools/u;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic aF:Lcom/android/mtools/q;

.field private final synthetic aJ:Ljava/lang/String;

.field private final synthetic aL:Landroid/os/Bundle;

.field private final synthetic aM:Landroid/content/BroadcastReceiver;

.field private final synthetic aN:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/mtools/q;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mtools/u;->aF:Lcom/android/mtools/q;

    iput-object p2, p0, Lcom/android/mtools/u;->aN:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/mtools/u;->aJ:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/mtools/u;->aL:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/android/mtools/u;->aM:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/mtools/u;->aN:Landroid/content/Intent;

    const-string v1, "rCode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/mtools/u;->aF:Lcom/android/mtools/q;

    iget-object v2, p0, Lcom/android/mtools/u;->aJ:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mtools/u;->aL:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/android/mtools/u;->aM:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/android/mtools/q;->a(Lcom/android/mtools/q;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;)V

    return-void
.end method
