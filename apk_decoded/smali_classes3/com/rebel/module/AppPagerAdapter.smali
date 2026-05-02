.class public Lcom/rebel/module/AppPagerAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "AppPagerAdapter.java"


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0
    .param p1, "fragmentActivity"    # Landroidx/fragment/app/FragmentActivity;

    .line 11
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 12
    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .line 17
    packed-switch p1, :pswitch_data_0

    .line 23
    new-instance v0, Lcom/rebel/module/EsafFragment;

    invoke-direct {v0}, Lcom/rebel/module/EsafFragment;-><init>()V

    return-object v0

    .line 21
    :pswitch_0
    new-instance v0, Lcom/rebel/module/NaviFragment;

    invoke-direct {v0}, Lcom/rebel/module/NaviFragment;-><init>()V

    return-object v0

    .line 19
    :pswitch_1
    new-instance v0, Lcom/rebel/module/EsafFragment;

    invoke-direct {v0}, Lcom/rebel/module/EsafFragment;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getItemCount()I
    .locals 1

    .line 29
    const/4 v0, 0x2

    return v0
.end method
