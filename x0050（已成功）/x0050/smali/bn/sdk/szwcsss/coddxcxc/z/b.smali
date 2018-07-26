.class public Lbn/sdk/szwcsss/coddxcxc/z/b;
.super Ljava/lang/Object;


# static fields
.field public static final aa:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final cx:Ljava/lang/String;

.field public static final for:Ljava/lang/String;

.field public static final throw:Ljava/lang/String;

.field public static while:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "687474703a2f2f63736572766572312e726a796c712e636e2f6368616e6e656c2f7061796d656e7448616e646c652e616374696f6e"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/transient;->for(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbn/sdk/szwcsss/coddxcxc/z/b;->b:Ljava/lang/String;

    const-string v0, "687474703a2f2f797565796f7566772e6c6474616e672e636f6d2f6368616e6e656c2f7061796d656e7448616e646c652e616374696f6e"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/transient;->for(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbn/sdk/szwcsss/coddxcxc/z/b;->for:Ljava/lang/String;

    const-string v0, "687474703a2f2f33392e3130382e36312e32392f6368616e6e656c2f7061796d656e7448616e646c652e616374696f6e"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/transient;->for(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbn/sdk/szwcsss/coddxcxc/z/b;->cx:Ljava/lang/String;

    const-string v0, "687474703a2f2f33392e3130382e3231372e36302f6368616e6e656c2f7061796d656e7448616e646c652e616374696f6e"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/transient;->for(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbn/sdk/szwcsss/coddxcxc/z/b;->aa:Ljava/lang/String;

    const-string v0, "687474703a2f2f63736572766572332e726a796c712e636e2f6368616e6e656c2f757365724c6f67536176652e616374696f6e"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/transient;->for(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbn/sdk/szwcsss/coddxcxc/z/b;->throw:Ljava/lang/String;

    sget-object v0, Lbn/sdk/szwcsss/coddxcxc/z/b;->for:Ljava/lang/String;

    sput-object v0, Lbn/sdk/szwcsss/coddxcxc/z/b;->while:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroid/content/Context;ILorg/json/JSONObject;Lbn/sdk/szwcsss/coddxcxc/z/aa;)V
    .locals 7

    const/16 v6, 0x3a98

    const/4 v5, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lbn/sdk/szwcsss/coddxcxc/z/b;->while:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lbn/sdk/szwcsss/coddxcxc/z/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lbn/sdk/szwcsss/coddxcxc/z/b;->cx:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?requestId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lbn/sdk/szwcsss/coddxcxc/z/b;->aa:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?requestId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&v="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbn/sdk/szwcsss/coddxcxc/x/transient;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lbn/sdk/szwcsss/coddxcxc/z/throw;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3, v4}, Lbn/sdk/szwcsss/coddxcxc/z/throw;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-virtual {v2, v6, v6}, Lbn/sdk/szwcsss/coddxcxc/z/throw;->b(II)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, p3, v1, v0}, Lbn/sdk/szwcsss/coddxcxc/z/throw;->b(Lbn/sdk/szwcsss/coddxcxc/z/cx;[BLjava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;ILorg/json/JSONObject;Lbn/sdk/szwcsss/coddxcxc/z/cx;)V
    .locals 7

    const/16 v6, 0x3a98

    const/4 v5, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lbn/sdk/szwcsss/coddxcxc/z/b;->while:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lbn/sdk/szwcsss/coddxcxc/z/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lbn/sdk/szwcsss/coddxcxc/z/b;->cx:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?requestId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lbn/sdk/szwcsss/coddxcxc/z/b;->aa:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?requestId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&v="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbn/sdk/szwcsss/coddxcxc/x/transient;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lbn/sdk/szwcsss/coddxcxc/z/throw;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3, v4}, Lbn/sdk/szwcsss/coddxcxc/z/throw;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-virtual {v2, v6, v6}, Lbn/sdk/szwcsss/coddxcxc/z/throw;->b(II)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, p3, v1, v0}, Lbn/sdk/szwcsss/coddxcxc/z/throw;->b(Lbn/sdk/szwcsss/coddxcxc/z/cx;[BLjava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    const/4 v1, -0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lbn/sdk/szwcsss/coddxcxc/z/b;->for:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_2

    sget-object v0, Lbn/sdk/szwcsss/coddxcxc/z/b;->for:Ljava/lang/String;

    sput-object v0, Lbn/sdk/szwcsss/coddxcxc/z/b;->while:Ljava/lang/String;

    :cond_2
    sget-object v0, Lbn/sdk/szwcsss/coddxcxc/z/b;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_3

    sget-object v0, Lbn/sdk/szwcsss/coddxcxc/z/b;->b:Ljava/lang/String;

    sput-object v0, Lbn/sdk/szwcsss/coddxcxc/z/b;->while:Ljava/lang/String;

    :cond_3
    sget-object v0, Lbn/sdk/szwcsss/coddxcxc/z/b;->cx:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_4

    sget-object v0, Lbn/sdk/szwcsss/coddxcxc/z/b;->cx:Ljava/lang/String;

    sput-object v0, Lbn/sdk/szwcsss/coddxcxc/z/b;->while:Ljava/lang/String;

    :cond_4
    sget-object v0, Lbn/sdk/szwcsss/coddxcxc/z/b;->aa:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_0

    sget-object v0, Lbn/sdk/szwcsss/coddxcxc/z/b;->aa:Ljava/lang/String;

    sput-object v0, Lbn/sdk/szwcsss/coddxcxc/z/b;->while:Ljava/lang/String;

    goto :goto_0
.end method
