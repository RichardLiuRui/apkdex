.class Lbn/sdk/szwcsss/common/y/aa;
.super Landroid/os/Handler;


# instance fields
.field final synthetic b:Lbn/sdk/szwcsss/common/y/cx;


# direct methods
.method constructor <init>(Lbn/sdk/szwcsss/common/y/cx;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lbn/sdk/szwcsss/common/y/aa;->b:Lbn/sdk/szwcsss/common/y/cx;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "by"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "desc"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "money"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "orderId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, ""

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    array-length v4, v1

    if-lez v4, :cond_9

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ZYXD"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/aa;->b:Lbn/sdk/szwcsss/common/y/cx;

    invoke-static {v0}, Lbn/sdk/szwcsss/common/y/cx;->b(Lbn/sdk/szwcsss/common/y/cx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/aa;->b:Lbn/sdk/szwcsss/common/y/cx;

    invoke-static {v0}, Lbn/sdk/szwcsss/common/y/cx;->b(Lbn/sdk/szwcsss/common/y/cx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lbn/sdk/szwcsss/common/y/aa;->b:Lbn/sdk/szwcsss/common/y/cx;

    invoke-static {v2}, Lbn/sdk/szwcsss/common/y/cx;->b(Lbn/sdk/szwcsss/common/y/cx;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbn/sdk/szwcsss/coddxcxc/x/private;->b(Ljava/lang/String;)I

    move-result v2

    iget-object v4, p0, Lbn/sdk/szwcsss/common/y/aa;->b:Lbn/sdk/szwcsss/common/y/cx;

    invoke-static {v4}, Lbn/sdk/szwcsss/common/y/cx;->for(Lbn/sdk/szwcsss/common/y/cx;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v4, p0, Lbn/sdk/szwcsss/common/y/aa;->b:Lbn/sdk/szwcsss/common/y/cx;

    invoke-virtual {v4, v0}, Lbn/sdk/szwcsss/common/y/cx;->b(Ljava/lang/String;)Lbn/sdk/szwcsss/coddxcxc/x/native;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "initParalleHandler"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    const-string v4, "PayFail"

    iget v4, p1, Landroid/os/Message;->what:I

    sget v5, Lbn/sdk/szwcsss/coddxcxc/x/import;->transient:I

    if-ne v4, v5, :cond_3

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/aa;->b:Lbn/sdk/szwcsss/common/y/cx;

    invoke-static {v1}, Lbn/sdk/szwcsss/common/y/cx;->cx(Lbn/sdk/szwcsss/common/y/cx;)I

    sget v1, Lbn/sdk/szwcsss/coddxcxc/x/import;->transient:I

    invoke-virtual {v0, v1, v3}, Lbn/sdk/szwcsss/coddxcxc/x/native;->b(ILjava/lang/String;)V

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/aa;->b:Lbn/sdk/szwcsss/common/y/cx;

    invoke-static {v1}, Lbn/sdk/szwcsss/common/y/cx;->aa(Lbn/sdk/szwcsss/common/y/cx;)Lbn/sdk/szwcsss/coddxcxc/x/implements;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->b(Lbn/sdk/szwcsss/coddxcxc/x/native;)V

    const-string v0, "PaySucc"

    :cond_2
    :goto_3
    invoke-static {}, Lbn/sdk/szwcsss/common/y/cx;->cx()I

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lbn/sdk/szwcsss/common/y/cx;->aa()I

    move-result v0

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/aa;->b:Lbn/sdk/szwcsss/common/y/cx;

    invoke-static {v1}, Lbn/sdk/szwcsss/common/y/cx;->aa(Lbn/sdk/szwcsss/common/y/cx;)Lbn/sdk/szwcsss/coddxcxc/x/implements;

    move-result-object v1

    invoke-virtual {v1}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->while()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/aa;->b:Lbn/sdk/szwcsss/common/y/cx;

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/aa;->b:Lbn/sdk/szwcsss/common/y/cx;

    invoke-static {v1}, Lbn/sdk/szwcsss/common/y/cx;->transient(Lbn/sdk/szwcsss/common/y/cx;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbn/sdk/szwcsss/common/y/cx;->b(Lbn/sdk/szwcsss/common/y/cx;Ljava/lang/String;)Z

    goto :goto_2

    :cond_3
    iget v4, p1, Landroid/os/Message;->what:I

    sget v5, Lbn/sdk/szwcsss/coddxcxc/x/import;->while:I

    if-ne v4, v5, :cond_4

    sget v1, Lbn/sdk/szwcsss/coddxcxc/x/import;->while:I

    invoke-virtual {v0, v1, v3}, Lbn/sdk/szwcsss/coddxcxc/x/native;->b(ILjava/lang/String;)V

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/aa;->b:Lbn/sdk/szwcsss/common/y/cx;

    invoke-static {v1}, Lbn/sdk/szwcsss/common/y/cx;->aa(Lbn/sdk/szwcsss/common/y/cx;)Lbn/sdk/szwcsss/coddxcxc/x/implements;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->b(Lbn/sdk/szwcsss/coddxcxc/x/native;)V

    const-string v0, "PayCancel"

    goto :goto_3

    :cond_4
    sget v4, Lbn/sdk/szwcsss/coddxcxc/x/import;->private:I

    invoke-virtual {v0, v4, v3}, Lbn/sdk/szwcsss/coddxcxc/x/native;->b(ILjava/lang/String;)V

    iget-object v3, p0, Lbn/sdk/szwcsss/common/y/aa;->b:Lbn/sdk/szwcsss/common/y/cx;

    invoke-static {v3}, Lbn/sdk/szwcsss/common/y/cx;->aa(Lbn/sdk/szwcsss/common/y/cx;)Lbn/sdk/szwcsss/coddxcxc/x/implements;

    move-result-object v3

    invoke-virtual {v3, v0}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->b(Lbn/sdk/szwcsss/coddxcxc/x/native;)V

    const-string v3, "PayFail"

    iget-object v3, p0, Lbn/sdk/szwcsss/common/y/aa;->b:Lbn/sdk/szwcsss/common/y/cx;

    invoke-static {v3}, Lbn/sdk/szwcsss/common/y/cx;->throw(Lbn/sdk/szwcsss/common/y/cx;)I

    move-result v3

    iget-object v4, p0, Lbn/sdk/szwcsss/common/y/aa;->b:Lbn/sdk/szwcsss/common/y/cx;

    invoke-static {v4}, Lbn/sdk/szwcsss/common/y/cx;->aa(Lbn/sdk/szwcsss/common/y/cx;)Lbn/sdk/szwcsss/coddxcxc/x/implements;

    move-result-object v4

    invoke-virtual {v4}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->import()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/x/native;->while()I

    move-result v3

    iget-object v4, p0, Lbn/sdk/szwcsss/common/y/aa;->b:Lbn/sdk/szwcsss/common/y/cx;

    invoke-static {v4}, Lbn/sdk/szwcsss/common/y/cx;->aa(Lbn/sdk/szwcsss/common/y/cx;)Lbn/sdk/szwcsss/coddxcxc/x/implements;

    move-result-object v4

    invoke-virtual {v4}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->transient()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v3, p0, Lbn/sdk/szwcsss/common/y/aa;->b:Lbn/sdk/szwcsss/common/y/cx;

    invoke-static {v3}, Lbn/sdk/szwcsss/common/y/cx;->aa(Lbn/sdk/szwcsss/common/y/cx;)Lbn/sdk/szwcsss/coddxcxc/x/implements;

    move-result-object v3

    invoke-virtual {v3}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->a()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lbn/sdk/szwcsss/common/y/aa;->b:Lbn/sdk/szwcsss/common/y/cx;

    invoke-static {v3}, Lbn/sdk/szwcsss/common/y/cx;->aa(Lbn/sdk/szwcsss/common/y/cx;)Lbn/sdk/szwcsss/coddxcxc/x/implements;

    move-result-object v3

    invoke-virtual {v3}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->a()Ljava/util/List;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lbn/sdk/szwcsss/common/y/aa;->b:Lbn/sdk/szwcsss/common/y/cx;

    invoke-static {v2}, Lbn/sdk/szwcsss/common/y/cx;->while(Lbn/sdk/szwcsss/common/y/cx;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/x/native;->cx()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lbn/sdk/szwcsss/common/y/aa;->b:Lbn/sdk/szwcsss/common/y/cx;

    invoke-static {v2}, Lbn/sdk/szwcsss/common/y/cx;->while(Lbn/sdk/szwcsss/common/y/cx;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/x/native;->cx()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lbn/sdk/szwcsss/common/y/aa;->b:Lbn/sdk/szwcsss/common/y/cx;

    invoke-static {v2}, Lbn/sdk/szwcsss/common/y/cx;->private(Lbn/sdk/szwcsss/common/y/cx;)I

    iget-object v2, p0, Lbn/sdk/szwcsss/common/y/aa;->b:Lbn/sdk/szwcsss/common/y/cx;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/x/native;->cx()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/x/native;->while()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2, v1, v3, v0}, Lbn/sdk/szwcsss/common/y/cx;->b(Lbn/sdk/szwcsss/common/y/cx;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_5
    invoke-static {}, Lbn/sdk/szwcsss/common/y/cx;->cx()I

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lbn/sdk/szwcsss/common/y/cx;->aa()I

    move-result v0

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/aa;->b:Lbn/sdk/szwcsss/common/y/cx;

    invoke-static {v1}, Lbn/sdk/szwcsss/common/y/cx;->throw(Lbn/sdk/szwcsss/common/y/cx;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/aa;->b:Lbn/sdk/szwcsss/common/y/cx;

    invoke-static {v1}, Lbn/sdk/szwcsss/common/y/cx;->aa(Lbn/sdk/szwcsss/common/y/cx;)Lbn/sdk/szwcsss/coddxcxc/x/implements;

    move-result-object v1

    invoke-virtual {v1}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->sdfsf()I

    move-result v1

    if-ge v0, v1, :cond_6

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/aa;->b:Lbn/sdk/szwcsss/common/y/cx;

    invoke-static {v0}, Lbn/sdk/szwcsss/common/y/cx;->private(Lbn/sdk/szwcsss/common/y/cx;)I

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/aa;->b:Lbn/sdk/szwcsss/common/y/cx;

    const-string v1, "ZYXD"

    const-string v2, ""

    invoke-static {v0, v1, v2, v6}, Lbn/sdk/szwcsss/common/y/cx;->b(Lbn/sdk/szwcsss/common/y/cx;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/aa;->b:Lbn/sdk/szwcsss/common/y/cx;

    invoke-static {v0}, Lbn/sdk/szwcsss/common/y/cx;->implements(Lbn/sdk/szwcsss/common/y/cx;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/aa;->b:Lbn/sdk/szwcsss/common/y/cx;

    invoke-static {v0}, Lbn/sdk/szwcsss/common/y/cx;->implements(Lbn/sdk/szwcsss/common/y/cx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lbn/sdk/szwcsss/coddxcxc/x/import;->transient:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/aa;->b:Lbn/sdk/szwcsss/common/y/cx;

    invoke-static {v0}, Lbn/sdk/szwcsss/common/y/cx;->implements(Lbn/sdk/szwcsss/common/y/cx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbn/sdk/szwcsss/common/y/yyl;

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/aa;->b:Lbn/sdk/szwcsss/common/y/cx;

    invoke-static {v1}, Lbn/sdk/szwcsss/common/y/cx;->implements(Lbn/sdk/szwcsss/common/y/cx;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/aa;->b:Lbn/sdk/szwcsss/common/y/cx;

    invoke-static {v1}, Lbn/sdk/szwcsss/common/y/cx;->implements(Lbn/sdk/szwcsss/common/y/cx;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_7
    if-eqz v0, :cond_0

    sget v1, Lbn/sdk/szwcsss/coddxcxc/x/import;->transient:I

    const-string v2, "success"

    invoke-interface {v0, v1, v2}, Lbn/sdk/szwcsss/common/y/yyl;->a(ILjava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    move-object v0, v2

    goto/16 :goto_1

    :cond_9
    move-object v1, v0

    goto/16 :goto_0
.end method
