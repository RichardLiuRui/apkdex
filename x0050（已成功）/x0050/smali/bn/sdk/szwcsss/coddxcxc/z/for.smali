.class public Lbn/sdk/szwcsss/coddxcxc/z/for;
.super Landroid/os/AsyncTask;


# instance fields
.field private b:Lbn/sdk/szwcsss/coddxcxc/z/cx;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs b([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "YYHttpFileTask doInBackground start"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/z/while;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public b(Lbn/sdk/szwcsss/coddxcxc/z/cx;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lbn/sdk/szwcsss/coddxcxc/z/for;->b:Lbn/sdk/szwcsss/coddxcxc/z/cx;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-virtual {p0, v0}, Lbn/sdk/szwcsss/coddxcxc/z/for;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "YYHttpFileTask onPostExecute start"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/z/for;->b:Lbn/sdk/szwcsss/coddxcxc/z/cx;

    invoke-virtual {v0, p1}, Lbn/sdk/szwcsss/coddxcxc/z/cx;->b(Ljava/lang/String;)V

    const-string v0, "YYHttpFileTask onPostExecute end"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lbn/sdk/szwcsss/coddxcxc/z/for;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lbn/sdk/szwcsss/coddxcxc/z/for;->b(Ljava/lang/String;)V

    return-void
.end method
