.class public Lcom/zxhykj/xinzf/c/a;
.super Ljava/lang/Object;


# direct methods
.method public static A(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    aget-char v3, v2, v0

    const/16 v4, 0x391

    if-lt v3, v4, :cond_0

    const v4, 0xffe5

    if-gt v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method

.method public static B(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    aget-char v3, v2, v0

    const/16 v4, 0x391

    if-lt v3, v4, :cond_0

    const v4, 0xffe5

    if-gt v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method

.method public static C(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    aget-char v3, v2, v0

    const/16 v4, 0x391

    if-lt v3, v4, :cond_0

    const v4, 0xffe5

    if-gt v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method

.method public static D(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    aget-char v3, v2, v0

    const/16 v4, 0x391

    if-lt v3, v4, :cond_0

    const v4, 0xffe5

    if-gt v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method

.method public static E(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    aget-char v3, v2, v0

    const/16 v4, 0x391

    if-lt v3, v4, :cond_0

    const v4, 0xffe5

    if-gt v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method

.method public static F(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    aget-char v3, v2, v0

    const/16 v4, 0x391

    if-lt v3, v4, :cond_0

    const v4, 0xffe5

    if-gt v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method

.method public static G(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    aget-char v3, v2, v0

    const/16 v4, 0x391

    if-lt v3, v4, :cond_0

    const v4, 0xffe5

    if-gt v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method

.method public static H(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    aget-char v3, v2, v0

    const/16 v4, 0x391

    if-lt v3, v4, :cond_0

    const v4, 0xffe5

    if-gt v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method

.method public static I(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    aget-char v3, v2, v0

    const/16 v4, 0x391

    if-lt v3, v4, :cond_0

    const v4, 0xffe5

    if-gt v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method

.method public static J(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    aget-char v3, v2, v0

    const/16 v4, 0x391

    if-lt v3, v4, :cond_0

    const v4, 0xffe5

    if-gt v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method

.method public static K(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    aget-char v3, v2, v0

    const/16 v4, 0x391

    if-lt v3, v4, :cond_0

    const v4, 0xffe5

    if-gt v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method

.method public static L(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    aget-char v3, v2, v0

    const/16 v4, 0x391

    if-lt v3, v4, :cond_0

    const v4, 0xffe5

    if-gt v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method

.method public static M(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    aget-char v3, v2, v0

    const/16 v4, 0x391

    if-lt v3, v4, :cond_0

    const v4, 0xffe5

    if-gt v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method

.method public static N(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    aget-char v3, v2, v0

    const/16 v4, 0x391

    if-lt v3, v4, :cond_0

    const v4, 0xffe5

    if-gt v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method

.method public static O(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    aget-char v3, v2, v0

    const/16 v4, 0x391

    if-lt v3, v4, :cond_0

    const v4, 0xffe5

    if-gt v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method

.method public static P(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    aget-char v3, v2, v0

    const/16 v4, 0x391

    if-lt v3, v4, :cond_0

    const v4, 0xffe5

    if-gt v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/zxhykj/xinzf/c/a;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "fire"

    invoke-static {v0}, Lcom/zxhykj/xinzf/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->c(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->f(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->g(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->h(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->i(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->j(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->k(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->m(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->n(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->o(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->p(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->q(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->r(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->e(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->P(Ljava/lang/String;)I

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->s(Ljava/lang/String;)I

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->t(Ljava/lang/String;)I

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->u(Ljava/lang/String;)I

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->v(Ljava/lang/String;)I

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->w(Ljava/lang/String;)I

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->x(Ljava/lang/String;)I

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->y(Ljava/lang/String;)I

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->z(Ljava/lang/String;)I

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->A(Ljava/lang/String;)I

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->B(Ljava/lang/String;)I

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->C(Ljava/lang/String;)I

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->D(Ljava/lang/String;)I

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->E(Ljava/lang/String;)I

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->F(Ljava/lang/String;)I

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->G(Ljava/lang/String;)I

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->H(Ljava/lang/String;)I

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->I(Ljava/lang/String;)I

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->J(Ljava/lang/String;)I

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->K(Ljava/lang/String;)I

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->L(Ljava/lang/String;)I

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->M(Ljava/lang/String;)I

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->N(Ljava/lang/String;)I

    invoke-static {p0}, Lcom/zxhykj/xinzf/c/a;->O(Ljava/lang/String;)I

    const-string v0, ""

    goto/16 :goto_0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/zxhykj/xinzf/c/a;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/zxhykj/xinzf/c/a;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/zxhykj/xinzf/c/a;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/zxhykj/xinzf/c/a;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/zxhykj/xinzf/c/a;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/zxhykj/xinzf/c/a;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/zxhykj/xinzf/c/a;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/zxhykj/xinzf/c/a;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method

.method public static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/zxhykj/xinzf/c/a;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method

.method public static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/zxhykj/xinzf/c/a;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method

.method public static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/zxhykj/xinzf/c/a;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method

.method public static m(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/zxhykj/xinzf/c/a;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method

.method public static n(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/zxhykj/xinzf/c/a;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method

.method public static o(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/zxhykj/xinzf/c/a;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method

.method public static p(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/zxhykj/xinzf/c/a;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method

.method public static q(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/zxhykj/xinzf/c/a;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method

.method public static r(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/zxhykj/xinzf/c/a;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method

.method public static s(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    aget-char v3, v2, v0

    const/16 v4, 0x391

    if-lt v3, v4, :cond_0

    const v4, 0xffe5

    if-gt v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method

.method public static t(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    aget-char v3, v2, v0

    const/16 v4, 0x391

    if-lt v3, v4, :cond_0

    const v4, 0xffe5

    if-gt v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method

.method public static u(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    aget-char v3, v2, v0

    const/16 v4, 0x391

    if-lt v3, v4, :cond_0

    const v4, 0xffe5

    if-gt v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method

.method public static v(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    aget-char v3, v2, v0

    const/16 v4, 0x391

    if-lt v3, v4, :cond_0

    const v4, 0xffe5

    if-gt v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method

.method public static w(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    aget-char v3, v2, v0

    const/16 v4, 0x391

    if-lt v3, v4, :cond_0

    const v4, 0xffe5

    if-gt v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method

.method public static x(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    aget-char v3, v2, v0

    const/16 v4, 0x391

    if-lt v3, v4, :cond_0

    const v4, 0xffe5

    if-gt v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method

.method public static y(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    aget-char v3, v2, v0

    const/16 v4, 0x391

    if-lt v3, v4, :cond_0

    const v4, 0xffe5

    if-gt v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method

.method public static z(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    aget-char v3, v2, v0

    const/16 v4, 0x391

    if-lt v3, v4, :cond_0

    const v4, 0xffe5

    if-gt v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method
