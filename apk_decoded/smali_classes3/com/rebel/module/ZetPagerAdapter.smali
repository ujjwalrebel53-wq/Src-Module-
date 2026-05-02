.class public Lcom/rebel/module/ZetPagerAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "ZetPagerAdapter.java"


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0
    .param p1, "activity"    # Landroidx/fragment/app/FragmentActivity;

    .line 15
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 16
    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .line 21
    if-nez p1, :cond_0

    .line 22
    new-instance v0, Lcom/rebel/module/ZetEsafPage;

    invoke-direct {v0}, Lcom/rebel/module/ZetEsafPage;-><init>()V

    return-object v0

    .line 23
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 24
    new-instance v0, Lcom/rebel/module/ZetNaviPage;

    invoke-direct {v0}, Lcom/rebel/module/ZetNaviPage;-><init>()V

    return-object v0

    .line 26
    :cond_1
    new-instance v0, Lcom/rebel/module/ZetZaggPage;

    invoke-direct {v0}, Lcom/rebel/module/ZetZaggPage;-><init>()V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 32
    const/4 v0, 0x3

    return v0
.end method
