package com.example.coop.mad_final;

/**
 * Created by Coop on 12/8/16.
 */

public class IceCream {
    private String iceCreamShop;
    private String iceCreamShopURL;

    private void setIceCreamInfo(Integer iceCreamCrowd) {
        switch (iceCreamCrowd) {
            case 0: //death by chocholate
                iceCreamShop = "Glacier";
                iceCreamShopURL = "http://www.glaciericecream.com/";
                break;
            case 1: //cookies and cream
                iceCreamShop = "Sweet Cow";
                iceCreamShopURL = "http://www.sweetcowicecream.com/";
                break;
            case 2: //salted caramel
                iceCreamShop = "Fior di Latte";
                iceCreamShopURL = "http://www.fiordilattegelato.com/";
                break;
            default:
                iceCreamShop = "none";
                iceCreamShopURL = "https://www.google.com/search?q=boulder+icecream+shops&ie=utf-8&oe=utf-8";

        }

    }

    public void setIceCreamShop(Integer iceCreamCrowd) {
        setIceCreamInfo(iceCreamCrowd);
    }

    public void setIceCreamShopURL(Integer iceCreamCrowd) {
        setIceCreamInfo(iceCreamCrowd);
    }

    public String getIceCreamShop() {
        return iceCreamShop;
    }

    public String getIceCreamShopURL() {
        return iceCreamShopURL;
    }
}
