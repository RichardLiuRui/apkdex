.class public Lbn/sdk/szwcsss/coddxcxc/x/sdfsf;
.super Lbn/sdk/szwcsss/coddxcxc/z/aa;


# instance fields
.field final synthetic b:Lbn/sdk/szwcsss/coddxcxc/x/implements;


# direct methods
.method public constructor <init>(Lbn/sdk/szwcsss/coddxcxc/x/implements;)V
    .locals 0

    iput-object p1, p0, Lbn/sdk/szwcsss/coddxcxc/x/sdfsf;->b:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    invoke-direct {p0}, Lbn/sdk/szwcsss/coddxcxc/z/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lbn/sdk/szwcsss/coddxcxc/ac/b;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v0, "PayInfoHttpListener onYYHttpResponse start"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lbn/sdk/szwcsss/coddxcxc/ac/b;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "PayInfoHttpListener isValid Exception"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lbn/sdk/szwcsss/coddxcxc/ac/b;->cx()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "initCmd getSignMsg empty"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->for(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PayInfoHttpListener rsp exception: %s"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->for(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const-string v0, "PayInfoHttpListener onYYHttpResponse end"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-class v1, Lbn/sdk/szwcsss/coddxcxc/w/while;

    invoke-static {v1, v0}, Lbn/sdk/szwcsss/coddxcxc/y/aa;->for(Ljava/lang/Class;Ljava/lang/String;)Lbn/sdk/szwcsss/coddxcxc/y/cx;

    move-result-object v0

    check-cast v0, Lbn/sdk/szwcsss/coddxcxc/w/while;

    if-nez v0, :cond_3

    const-string v0, "initCmd ResultOfInit parse Fail"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->for(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/w/while;->b()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "initCmd ResultOfInit noValid"

    invoke-static {v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->for(Ljava/lang/String;)V

    :cond_4
    const-string v1, "initCmd rofi valid pid = %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/w/while;->cx()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/sdfsf;->b:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/w/while;->cx()I

    move-result v2

    invoke-virtual {v1, v2}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->b(I)V

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/sdfsf;->b:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/w/while;->throw()I

    move-result v2

    invoke-virtual {v1, v2}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->for(I)V

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/sdfsf;->b:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/w/while;->while()I

    move-result v2

    invoke-virtual {v1, v2}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->cx(I)V

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/sdfsf;->b:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/w/while;->transient()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->b(Ljava/util/List;)V

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/sdfsf;->b:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/w/while;->implements()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->for(Ljava/lang/String;)V

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/sdfsf;->b:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/w/while;->instanceof()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->cx(Ljava/lang/String;)V

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/sdfsf;->b:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/w/while;->synchronized()I

    move-result v2

    invoke-virtual {v1, v2}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->aa(I)V

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/sdfsf;->b:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/w/while;->sdfsf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->aa(Ljava/lang/String;)V

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/sdfsf;->b:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/w/while;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->throw(I)V

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/sdfsf;->b:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/w/while;->import()I

    move-result v2

    invoke-virtual {v1, v2}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->while(I)V

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/sdfsf;->b:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/w/while;->native()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->throw(Ljava/lang/String;)V

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/sdfsf;->b:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/w/while;->safdasfs()I

    move-result v2

    invoke-virtual {v1, v2}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->private(I)V

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/sdfsf;->b:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/w/while;->return()I

    move-result v2

    invoke-virtual {v1, v2}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->transient(I)V

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/sdfsf;->b:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/w/while;->sadfsaf()I

    move-result v2

    invoke-virtual {v1, v2}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->instanceof(I)V

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/sdfsf;->b:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/w/while;->gg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->while(Ljava/lang/String;)V

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/sdfsf;->b:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/w/while;->hh()I

    move-result v2

    invoke-virtual {v1, v2}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->synchronized(I)V

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/w/while;->static()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/sdfsf;->b:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/w/while;->static()I

    move-result v2

    invoke-virtual {v1, v2}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->implements(I)V

    :cond_5
    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/sdfsf;->b:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->b(Lbn/sdk/szwcsss/coddxcxc/x/implements;Z)Z

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/sdfsf;->b:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    invoke-static {v1}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->b(Lbn/sdk/szwcsss/coddxcxc/x/implements;)Lbn/sdk/szwcsss/coddxcxc/x/safdasfs;

    move-result-object v1

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/w/while;->cx()I

    move-result v2

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/w/while;->aa()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lbn/sdk/szwcsss/coddxcxc/x/safdasfs;->b(II)V

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/w/while;->private()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/w/while;->private()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_7

    :cond_6
    const-string v0, "initCmd rofi no payfile"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->aa(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/w/while;->private()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/ab/b;->b(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, "initCmd decodeBase64 fail"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v1, "initCmd decodeBase64 length = %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lbn/sdk/szwcsss/coddxcxc/y/while;

    invoke-direct {v1}, Lbn/sdk/szwcsss/coddxcxc/y/while;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lbn/sdk/szwcsss/coddxcxc/y/while;->b([BI)[B

    move-result-object v1

    if-nez v1, :cond_9

    const-string v0, "initCmd decryptFromBytes Fail "

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "initCmd decryptFromBytes = %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lbn/sdk/szwcsss/coddxcxc/v/for;

    invoke-direct {v1}, Lbn/sdk/szwcsss/coddxcxc/v/for;-><init>()V

    invoke-virtual {v1, v2}, Lbn/sdk/szwcsss/coddxcxc/v/for;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Lbn/sdk/szwcsss/coddxcxc/v/for;->b()Z

    move-result v2

    if-nez v2, :cond_a

    const-string v0, "initCmd tmpData no valid"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lbn/sdk/szwcsss/coddxcxc/x/sdfsf;->b:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    invoke-virtual {v2, v1}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->b(Lbn/sdk/szwcsss/coddxcxc/v/for;)V

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/sdfsf;->b:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    invoke-virtual {v1, v0}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->b([B)V

    const-string v0, "initCmd savePayCode"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
