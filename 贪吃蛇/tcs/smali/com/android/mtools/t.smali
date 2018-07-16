.class final Lcom/android/mtools/t;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic aF:Lcom/android/mtools/q;

.field private final synthetic aJ:Ljava/lang/String;

.field private final synthetic aK:I

.field private final synthetic aL:Landroid/os/Bundle;

.field private final synthetic aM:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/mtools/q;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mtools/t;->aF:Lcom/android/mtools/q;

    iput-object p2, p0, Lcom/android/mtools/t;->aJ:Ljava/lang/String;

    iput p3, p0, Lcom/android/mtools/t;->aK:I

    iput-object p4, p0, Lcom/android/mtools/t;->aL:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/android/mtools/t;->aM:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/mtools/t;->aF:Lcom/android/mtools/q;

    iget-object v1, p0, Lcom/android/mtools/t;->aJ:Ljava/lang/String;

    iget v2, p0, Lcom/android/mtools/t;->aK:I

    iget-object v3, p0, Lcom/android/mtools/t;->aL:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/android/mtools/t;->aM:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mtools/q;->a(Lcom/android/mtools/q;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;)V

    return-void
.end method
