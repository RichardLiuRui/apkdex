.class final Lcom/android/mtools/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic aS:Lcom/android/mtools/MPay;

.field private final synthetic aT:Lcom/android/mtools/f;


# direct methods
.method constructor <init>(Lcom/android/mtools/MPay;Lcom/android/mtools/f;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mtools/y;->aS:Lcom/android/mtools/MPay;

    iput-object p2, p0, Lcom/android/mtools/y;->aT:Lcom/android/mtools/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/mtools/y;->aS:Lcom/android/mtools/MPay;

    iget-object v1, p0, Lcom/android/mtools/y;->aT:Lcom/android/mtools/f;

    invoke-static {v0, v1}, Lcom/android/mtools/MPay;->a(Lcom/android/mtools/MPay;Lcom/android/mtools/f;)V

    invoke-static {p1}, Lcom/android/mtools/MPDialog;->a(Landroid/content/DialogInterface;)V

    return-void
.end method
