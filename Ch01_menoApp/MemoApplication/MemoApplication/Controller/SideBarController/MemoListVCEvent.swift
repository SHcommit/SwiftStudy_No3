//
//  MemoListVCExtension.swift
//  MemoApplication
//
//  Created by μμΉν on 2022/07/22.
//

import UIKit

extension MemoListVC
{
    @objc func moveSide(_ sender : Any)
    {
        
        if sender is UIBarButtonItem
        {
            if self.sideBarDelegate?.isSideBarShowing == false
            {
                self.sideBarDelegate?.openSideBar(nil)
            }
            else
            {
                self.sideBarDelegate?.closeSideBar(nil)
            }
        }
        else if sender is UIScreenEdgePanGestureRecognizer
        {
            self.sideBarDelegate?.openSideBar(nil)
        }
        else if sender is UISwipeGestureRecognizer
        {
            self.sideBarDelegate?.closeSideBar(nil)
        }
    }
}
