.class Lbn/sdk/szwcsss/common/y/instanceof;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lbn/sdk/szwcsss/common/y/cx;


# direct methods
.method constructor <init>(Lbn/sdk/szwcsss/common/y/cx;)V
    .locals 0

    iput-object p1, p0, Lbn/sdk/szwcsss/common/y/instanceof;->b:Lbn/sdk/szwcsss/common/y/cx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    sget-object v0, Lbn/sdk/szwcsss/common/y/cx;->b:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
