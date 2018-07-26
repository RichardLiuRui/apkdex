.class Lbn/sdk/szwcsss/coddxcxc/t/for;
.super Ldalvik/system/DexClassLoader;


# instance fields
.field final synthetic b:Lbn/sdk/szwcsss/coddxcxc/t/b;


# direct methods
.method constructor <init>(Lbn/sdk/szwcsss/coddxcxc/t/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0

    iput-object p1, p0, Lbn/sdk/szwcsss/coddxcxc/t/for;->b:Lbn/sdk/szwcsss/coddxcxc/t/b;

    invoke-direct {p0, p2, p3, p4, p5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-super {p0, p1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
